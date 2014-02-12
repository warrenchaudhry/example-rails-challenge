class CreateCharges < ActiveRecord::Migration
  def self.up
    create_table :charges do |t|
    	t.integer				:created
    	t.boolean				:paid
    	t.decimal				:amount,		:precision => 10,		:scale => 2			
    	t.string				:currency
    	t.boolean				:refunded
    	t.integer				:customer_id

      t.timestamps
    end
  end
  
  def self.down
  	drop_table :charges
  end
end
