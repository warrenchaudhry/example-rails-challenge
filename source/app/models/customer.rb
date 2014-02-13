class Customer < ActiveRecord::Base
	
	has_many :charges, :dependent => :destroy
	
	
  def formal_name
    "#{last_name},  #{first_name}"
  end
  
end
