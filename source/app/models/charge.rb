class Charge < ActiveRecord::Base
	
	belongs_to :customer
	
	scope :successful, -> { where(paid: true, refunded: false) }
	scope :failed, -> { where(paid: false) }
	scope :disputed, -> { where(paid: true, refunded: true) }
	
end
