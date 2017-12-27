class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :line_items
  has_many :items, through: :line_items

  def total
    sum = 0

    self.items.each do |item|
      sum = sum + (item.price * self.line_items.find_by(item_id: item.id).quantity)
    end

    sum
  end

  def add_item(item_id)
    if self.line_items.find_by(item_id: item_id)
      line_item = self.line_items.find_by(item_id: item_id)
      line_item.update(quantity: line_item.quantity + 1)
      line_item
    else
      line_item = LineItem.new(item_id: item_id, cart_id: self.id)
    end
  end
end
