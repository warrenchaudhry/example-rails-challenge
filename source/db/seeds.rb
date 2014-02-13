# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	customer1 = Customer.create({ :first_name => 'Johny', :last_name => 'Flow'})
	customer2 = Customer.create({ :first_name => 'Raj', :last_name => 'Jamnis'})
	customer3 = Customer.create({ :first_name => 'Andrew', :last_name => 'Chung'})
	customer4 = Customer.create({ :first_name => 'Mike', :last_name => 'Smith'})
	
	
	###################################################################
	# Successful Transactions
	
	# 5 successful transactions for customer1
	5.times do |i|
		customer1.charges.create!({
				:created => (Date.today - i).to_time.to_i,
				:paid => true,
				:amount => 4900,
				:currency => 'usd',
				:refunded => false
		})
	end
	
	# 3 successful transactions for customer2
	3.times do |i|
		customer2.charges.create!({
				:created => (Date.today - i).to_time.to_i,
				:paid => true,
				:amount => 1800.76,
				:currency => 'usd',
				:refunded => false
		})
	end
	
	
	# 1 successful transaction each for customer3 and customer4 respectively
	
	customer3.charges.create!({
			:created => (Date.today - 1).to_time.to_i,
			:paid => true,
			:amount => 2867.12,
			:currency => 'usd',
			:refunded => false
	})
	
	customer4.charges.create!({
			:created => Time.now.to_i,
			:paid => true,
			:amount => 1455.98,
			:currency => 'usd',
			:refunded => false
	})
	
	#############################################################################
	# Failed Transactions
	
	# 3 failed transactions for customer3
	
	3.times do |i| 
		customer3.charges.create!({
				:created => (Date.today - i).to_time.to_i,
				:paid => false,
				:amount => 876.13,
				:currency => 'usd',
				:refunded => false
		})
	end
	
	
	# 2 failed transactions for customer4
	2.times do |i|
		customer4.charges.create!({
				:created => (Date.today - i).to_time.to_i,
				:paid => false,
				:amount => 957.25,
				:currency => 'usd',
				:refunded => false
		})
	end
	
	
	#############################################################################
	# Disputed Transactions
	
	# 3 disputed transactions for customer1
	
	3.times do |i|
		customer1.charges.create!({
				:created => (Date.today - i).to_time.to_i,
				:paid => true,
				:amount => 1478.82,
				:currency => 'usd',
				:refunded => true
		})
	end
	
	
	# 2 disputed transactions for customer4
	2.times do |i|
		customer2.charges.create!({
				:created => (Date.today - i).to_time.to_i,
				:paid => true,
				:amount => 965.10,
				:currency => 'usd',
				:refunded => true
		})
	end
	
	
	
	
	
	
		 
	
	
