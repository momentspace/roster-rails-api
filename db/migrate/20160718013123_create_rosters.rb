class CreateRosters < ActiveRecord::Migration[5.0]
  def change
    create_table :rosters do |t|
      t.integer :user_id
      t.integer :year
      t.integer :month

      t.timestamps
    end
  end
end
