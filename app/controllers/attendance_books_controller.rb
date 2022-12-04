class AttendanceBooksController < ApplicationController
  def index
    @attendancebooks = AttendanceBook.all
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
    # byebug
    unless params[:attendance_book].values.include?("")
      team.kid_ids.each do |kid_id|
        attendance = params[:attendance_book]["#{kid_id}_attendance"].to_i
        AttendanceBook.create(kid_id: kid_id, presence_or_absence: attendance, start_time: Date.today)
      end
      # ContactMailer.contact_mail(@contact).deliver
      redirect_to attendance_books_path, notice: "出席確認できました！"
    else
      redirect_to team_path(id: team_id), notice: "もう一度確認してください！"
    end
  end

  def show
    @attendancebook = AttendanceBook.find(params[:id])
  end
end