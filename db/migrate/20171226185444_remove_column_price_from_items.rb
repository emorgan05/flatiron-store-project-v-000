class RemoveColumnPriceFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :price, :decimal, :precision => 9, :scale => 2
  end
end
