class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.datetime "start_time", null: false
      t.text "remark", null: false
      t.string "title", null: false

      t.timestamps
    end
  end
end
