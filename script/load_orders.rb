
Order.transaction do
  (1..100).each do |i|
    customer = "Customer #{i}"
    address  = "#{i} Main Street"
    email    = "customer-#{i}@example.com"
    pay_type = "Check"

    puts "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
    puts "XXX ordering: customer|#{customer}|"
    puts "XXX ordering: address|#{address}|"
    puts "XXX ordering: email|#{email}|"
    puts "XXX ordering: pay_type|#{pay_type}|"

    Order.create(name: customer, address: address, email: email, pay_type: pay_type)
  end
end
