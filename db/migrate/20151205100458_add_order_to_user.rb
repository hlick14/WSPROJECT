class AddOrderToUser < ActiveRecord::Migration
  def change
    add_reference :users, :orders, index: true, foreign_key: true
  end
end
