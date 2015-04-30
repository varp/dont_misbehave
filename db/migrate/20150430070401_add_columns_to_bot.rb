class AddColumnsToBot < ActiveRecord::Migration
  def change
    change_table :bots do |t|
      t.column :user_agent, :string
      t.column :is_crawler, :boolean
    end
  end
end
