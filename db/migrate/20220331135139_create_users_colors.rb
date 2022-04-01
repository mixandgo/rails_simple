class CreateUsersColors < ActiveRecord::Migration[7.0]
  def change
    create_table :colors_users, id: false do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :color, null: false, foreign_key: true
    end
  end
end
