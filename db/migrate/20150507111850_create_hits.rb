class CreateHits < ActiveRecord::Migration
  def change
    create_table :hits do |t|
      t.string :ip
      t.string :user_agent
      t.string :referer

      t.timestamps null: false
    end
  end
end
