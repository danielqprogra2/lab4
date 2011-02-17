class CreateCompras < ActiveRecord::Migration
  def self.up
    create_table :compras do |t|
      t.integer :id
      t.string:code
      t.date :date
	  t.integer :client_id
	  t.integer :amount
      t.timestamps
    end
  end

  def self.down
    drop_table :compras
  end
end
