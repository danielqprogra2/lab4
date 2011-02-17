class CreateProductos < ActiveRecord::Migration
  def self.up
    create_table :productos do |t|
		
	  t.integer :code
      t.integer :id
      t.float :price
	  t.string :description
      t.timestamps
    end
  end

  def self.down
    drop_table :productos
  end
end
