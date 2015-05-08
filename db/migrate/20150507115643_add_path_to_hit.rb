class AddPathToHit < ActiveRecord::Migration
  def change
    change_table :hits do |t|
      t.column :path, :string
    end
  end
end
