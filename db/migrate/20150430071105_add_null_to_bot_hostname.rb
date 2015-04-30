class AddNullToBotHostname < ActiveRecord::Migration
  def change
    change_column :bots, :hostname, :string, null: true
  end
end
