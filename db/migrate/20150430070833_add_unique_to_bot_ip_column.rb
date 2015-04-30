class AddUniqueToBotIpColumn < ActiveRecord::Migration
  def change
    change_column :bots, :ip, :string, unique: true
  end
end
