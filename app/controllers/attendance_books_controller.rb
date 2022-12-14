class AttendanceBooksController < ApplicationController
  before_action :require_role, only:[:create, :new]
  def index
    @attendancebooks = AttendanceBook.all
    @done_attendance_kids = AttendanceBook.where(start_time: Date.current).pluck(:kid_id)
    if  params[:day_date] && params[:class_name]
      the_day_attendance_datas = AttendanceBook.where(start_time: params[:day_date])
      the_kids = Kid.where(team_id: "#{Team.find_by(name: params[:class_name]).id}")
      @attendancebooks_teams = the_day_attendance_datas.where(kid_id: the_kids)
      @day_date = params[:day_date]
      @team_name = params[:class_name]
    end

    if params[:sort_absence] == "true"
      the_day_attendance_datas = AttendanceBook.where(start_time: params[:day_date])
      the_kids = Kid.where(team_id: Team.find_by(name: params[:class_name]))
      @attendancebooks_teams = the_day_attendance_datas.where(kid_id: the_kids).sort_presence_or_absence
    end
  end

  def new
    @attendancebook = AttendanceBook.new
    @team = Team.find(params[:team_id])
  end

  def create
    # @attendancebook = Attendancebook.create(attendancebook_params)
    # "attendancebook"=>{"13_presence_or_absence"=>"1", "team_id"=>"10"}
    team_id = params[:attendance_book][:team_id].to_i
    team = Team.find(team_id)
    # team.kid_ids #=> [13, 14] 
    unless params[:attendance_book].values.include?("")
      team.kid_ids.each do |kid_id|
        attendance = params[:attendance_book]["#{kid_id}_attendance"].to_i
        AttendanceBook.create(kid_id: kid_id, presence_or_absence: attendance, start_time: Date.today)
      end
      ContactMailer.contact_mail(team).deliver
      redirect_to attendance_books_path, notice: "出席確認できました！"
      else
      redirect_to team_path(id: team_id), notice: "もう一度確認してください！"
    end
  end

  private

  def require_role
    unless current_user.role?
      flash[:notice] = "申し訳ありません。職員のみアクセスできるページになっています。"
      redirect_to attendance_books_path
    end
  end
end
