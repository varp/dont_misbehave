class AddIsBlockedToBot < ActiveRecord::Migration
  def change
    change_table :bots do |t|
      t.column :is_blocked, :boolean, default: false
    end
  end
end
