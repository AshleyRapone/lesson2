# For the second part of the solution, extracting the data, the format that is required in each case is as follows:

all_orders =[
  {customer_id: 12, customer_name: 'Emma Lopez', total_order_value: 483.48},
  {customer_id: 32, customer_name: 'Michael Richards', total_order_value: 205.65},
  # rest of data
]

fulfilled_orders =[
  {customer_id: 12, customer_name: 'Emma Lopez', order_value: 425.48},
  {customer_id: 32, customer_name: 'Michael Richards', order_value: 120.00},
  # rest of data
]
# For the unfiltered totals, the team again comes up with four possible solutions.
# Select all those that correctly implement the requirements.

# 1. CORRECT
all_orders = customer_orders.map do |customer|
  {
    customer_id: customer[:customer_id],
    customer_name: customer[:customer_name]
  }
end

customer_orders.each_with_index do |data, index|
  order_value = data[:orders].reduce(0) do |total, order|
    total + order[:order_value]
  end

  all_orders[index][:total_order_value] = order_value
end

=begin
{:customer_id=>12, :customer_name=>"Emma Lopez", :total_order_value=>483.48}
{:customer_id=>32, :customer_name=>"Michael Richards", :total_order_value=>205.65}
=end
# 2. CORRECT
all_orders = customer_orders.map do |customer_data|
  order_value = customer_data[:orders].inject(0) do |total, order_data|
    total + order_data[:order_value]
  end

  {
    customer_id: customer_data[:customer_id],
    customer_name: customer_data[:customer_name],
    total_order_value: order_value
  }
end

=begin
[{:customer_id=>12, :customer_name=>"Emma Lopez", :total_order_value=>483.48},
{:customer_id=>32, :customer_name=>"Michael Richards", :total_order_value=>205.65}]
=end

# 3. CORRECT
all_orders = []

customer_orders.each do |customer_data|
  customer_total_orders = {
    customer_id: customer_data[:customer_id],
    customer_name: customer_data[:customer_name],
    total_order_value: 0
  }

  customer_data[:orders].each do |order|
    customer_total_orders[:total_order_value] += order[:order_value]
  end

  all_orders << customer_total_orders
end
=begin
{:customer_id=>12, :customer_name=>"Emma Lopez", :total_order_value=>483.48}
{:customer_id=>32, :customer_name=>"Michael Richards", :total_order_value=>205.65}
=end

# 4. INCORRECT
all_orders = []

customer_orders.each do |customer_data|
  cust_arr = [
    [:customer_id, customer_data[:customer_id]],
    [:customer_name, customer_data[:customer_name]],
    [:total_order_value]
  ]

  order_value = 0
  customer_data[:orders].each do |order|
    order_value += order[:order_value]
  end

  cust_arr[2] << order_value

  all_orders << cust_arr
end

=begin
Does not print out the right piece of code we want: can be saved by typing all_orders << cust_arr.to_h for last line
[
{:customer_id=>12, :customer_name=>"Emma Lopez", :orders=>[{:order_fulfilled=>true, :order_value=>135.99}, {:order_fulfilled=>true, :order_value=>289.49}, {:order_fulfilled=>false, :order_value=>58.0}]}, {:customer_id=>32, :customer_name=>"Michael Richards", :orders=>[{:order_fulfilled=>true, :order_value=>120.0}, {:order_fulfilled=>false, :order_value=>85.65}]}]
2.4.0 :041 >

=end
