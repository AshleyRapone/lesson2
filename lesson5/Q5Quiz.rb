# Given the following nested data structure, and without running the code,
# select all the options that would set the value for :completed to true for all of the todos
# in the 'Homework' list.

todo_lists = [
  {
    id: 1,
    list_name: 'Groceries',
    todos: [
      { id: 1, name: 'Bread', completed: false },
      { id: 2, name: 'Milk', completed: false },
      { id: 3, name: 'Apple Juice', completed: false }
    ]
  },
  {
    id: 2,
    list_name: 'Homework',
    todos: [
      { id: 1, name: 'Math', completed: false },
      { id: 2, name: 'English', completed: false }
    ]
  }
]

# 1. Correct
todo_lists[1].each do |list_key, list_value|
  if list_key == :todos
    list_value.each { |todo| todo[:completed] = true }
  end
end

=begin
Iterate through the 1st index of todo_lists array and for each list_key and list_value
  -if the list_key == :todos
    iterate through the list_value and for each todo item change the completed key to true
=end

# 2. Correct
todo_lists[1][:todos][0][:completed] = true
todo_lists[1][:todos][1][:completed] = true

=begin
todo_lists[1] = {
    id: 2,
    list_name: 'Homework',
    todos: [
      { id: 1, name: 'Math', completed: false },
      { id: 2, name: 'English', completed: false }
    ]
  }
  todo_lists[1][:todos] = [
    { id: 1, name: 'Math', completed: false },
    { id: 2, name: 'English', completed: false }
  ]
  todo_lists[1][:todos][0] = { id: 1, name: 'Math', completed: false }
  todo_lists[1][:todos][0][:completed] = false
  Acessing the right value to change it to true
=end

#3. CORRECT
todo_lists.each do |list|
  if list[:list_name] == 'Homework'
    list[:todos].each do |todo|
      todo[:completed] = true
    end
  end
end

=begin
Iterate through todo_lists and for each list(hash)
  -if the list_name == 'Homework'
    itreate through the todos key and in the list(hash) and for each todo
      set the todo value of the completed key to true
=end

# 4. CORRECT
todo_lists[1][:todos].each do |todo|
  todo[:completed] = true
end

=begin
Iterate through the :todos key and for each todo
  -set the todo :completed value to true
=end
