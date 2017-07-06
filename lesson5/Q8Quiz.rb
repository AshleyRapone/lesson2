# This is an example of the provided data:

order_data = [
  {customer_id: 12,
   customer_name: 'Emma Lopez', order_id: 351, order_date: '12/04/16', order_fulfilled: true, order_value: 135.99},
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 383, order_date: '12/04/16', order_fulfilled: true, order_value: 289.49},
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 392, order_date: '01/10/17', order_fulfilled: false, order_value: 58.00},
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 241, order_date: '11/10/16', order_fulfilled: true, order_value: 120.00},
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 395, order_date: '01/10/17', order_fulfilled: false, order_value: 85.65},
  # rest of data...
]

customer_orders = [
  {
    customer_id: 12,
    customer_name: 'Emma Lopez',
    orders: [
      { order_fulfilled: true, order_value: 135.99 },
      { order_fulfilled: true, order_value: 289.49 },
      { order_fulfilled: false, order_value: 58.00 }
    ]
  },
  {
    customer_id: 32,
    customer_name: 'Michael Richards',
    orders: [
      { order_fulfilled: true, order_value: 120.00 },
      { order_fulfilled: false, order_value: 85.65 }
    ]
  },
  # rest of data...
]


# The team comes up with four possible solutions to convert the initial data to the new structure.
# Select all the solutions which correctly restructure the data.

#1. INCORRECT
customer_orders = {}

order_data.each do |row|
  if customer_orders.has_key?(row[:customer_id])
    customer_orders[row[:customer_id]][:orders] << [
      row[:order_fulfilled],
      row[:order_value]
    ]
  else
    customer_orders[row[:customer_id]] = {
      customer_id: row[:customer_id],
      customer_name: row[:customer_name],
      orders: [
        [
          row[:order_fulfilled],
          row[:order_value]
        ]
      ]
    }
  end
end

customer_orders = customer_orders.values

=begin
The orders data is wrapped in an array (lines 43-46 and lines 51-56) when it should be in a hash
=end

# 2. INCORRECT
temp_orders = {}

order_data.each do |row|
  temp_orders[row[:customer_id]] = {
      customer_name: row[:customer_name],
      customer_id: row[:customer_id],
      orders: [
        {
          order_fulfilled: row[:order_fulfilled],
          order_value: row[:order_value]
        }
      ]
    }
end

customer_orders = temp_orders.values

=begin
the existing value for each key gets replaced on each iteration where that key is matched.
{:customer_name=>"Emma Lopez", :customer_id=>12, :orders=>[{:order_fulfilled=>false, :order_value=>58.0}]}
{:customer_name=>"Michael Richards", :customer_id=>32, :orders=>[{:order_fulfilled=>false, :order_value=>85.65}]}
=end

# 3. CORRECT
customer_orders = {}

order_data.each do |row|
  if customer_orders.has_key?(row[:customer_id])
    customer_orders[row[:customer_id]][:orders] << {
      order_fulfilled: row[:order_fulfilled],
      order_value: row[:order_value]
    }
  else
    customer_orders[row[:customer_id]] = {
      customer_id: row[:customer_id],
      customer_name: row[:customer_name],
      orders: [
        {
          order_fulfilled: row[:order_fulfilled],
          order_value: row[:order_value]
        }
      ]
    }
  end
end

customer_orders = customer_orders.values

=begin Matches the correct one
  {
    :customer_id=>12,
    :customer_name=>"Emma Lopez",
    :orders=>[
      {:order_fulfilled=>true, :order_value=>135.99},
      {:order_fulfilled=>true, :order_value=>289.49},
      {:order_fulfilled=>false, :order_value=>58.0}
      ]
    }
    {
    :customer_id=>32,
    :customer_name=>"Michael Richards",
    :orders=>[
      {:order_fulfilled=>true, :order_value=>120.0},
      {:order_fulfilled=>false, :order_value=>85.65}]
    }
=end

# 4. INCORRECT
customer_orders = order_data.map do |row|
  {
    customer_id: row[:customer_id],
    customer_name: row[:customer_name],
    orders: [
      {
        order_fulfilled: row[:order_fulfilled],
        order_value: row[:order_value]
      }
    ]
  }
end
=begin
This is what is printed out
{:customer_id=>12, :customer_name=>"Emma Lopez", :orders=>[{:order_fulfilled=>true, :order_value=>135.99}]}
{:customer_id=>12, :customer_name=>"Emma Lopez", :orders=>[{:order_fulfilled=>true, :order_value=>289.49}]}
{:customer_id=>12, :customer_name=>"Emma Lopez", :orders=>[{:order_fulfilled=>false, :order_value=>58.0}]}
{:customer_id=>32, :customer_name=>"Michael Richards", :orders=>[{:order_fulfilled=>true, :order_value=>120.0}]}
{:customer_id=>32, :customer_name=>"Michael Richards", :orders=>[{:order_fulfilled=>false, :order_value=>85.65}]}

Because we used Array#map the customer_orders array has one hash per order rather than one hash per customer
(Customer id 12 printed 3 times because there was three orders in that batch)
(Customer id 32 printed 2 times because there was two orders in that batch)
=end
