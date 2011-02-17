class Cambioesquemaorderid < ActiveRecord::Migration
  def self.up
  add_column :productos, :order_id,:integer
  end

  def self.down
  end
end
