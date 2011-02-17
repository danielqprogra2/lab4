class CambioesquemaNit < ActiveRecord::Migration
  def self.up
   add_column :clients, :nit, :string
   add_index :clients, :nit, :unique => true  		
  end

  def self.down
  end
end
