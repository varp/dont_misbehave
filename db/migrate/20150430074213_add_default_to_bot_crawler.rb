class AddDefaultToBotCrawler < ActiveRecord::Migration
  def change
    change_column :bots, :is_crawler, :boolean, default: false
  end
end
