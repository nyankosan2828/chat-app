class CreateRoomUsers < ActiveRecord::Migration[6.0]
  belongs_to :room
  belongs_to :user
end
  def change
    create_table :room_users do |t|
      t.references :room, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end