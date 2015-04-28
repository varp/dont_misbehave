class CreateBots < ActiveRecord::Migration
  def change
    create_table :bots do |t|
      t.string :ip
      t.string :hostname

      t.timestamps null: false
    end
  end
end
