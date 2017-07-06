# Given the following nested data structure, and without running the code,
# select the correct option to change the string 'Apple Juice' to 'Orange Juice'.

todo_lists = [
  {
    id: 1,
    list_name: 'Groceries',
    todos: [
      { id: 1, name: 'Bread', completed: false },
      { id: 2, name: 'Milk', completed: false },
      { id: 3, name: 'Apple Juice', completed: false }
    ]
  }
]

=begin
1. todo_lists[0][:todos][2] = 'Orange Juice'
   todo_lists[0] = {
     id: 1,
     list_name: 'Groceries',
     todos: [
       { id: 1, name: 'Bread', completed: false },
       { id: 2, name: 'Milk', completed: false },
       { id: 3, name: 'Apple Juice', completed: false }
     ]
   }
   todo_lists[0][:todos] = [
     { id: 1, name: 'Bread', completed: false },
     { id: 2, name: 'Milk', completed: false },
     { id: 3, name: 'Apple Juice', completed: false }
   ]
   todo_lists[0][:todos][2] = { id: 3, name: 'Apple Juice', completed: false }
   Doesnt access The :name key

   INCORRECT

2. todo_lists[1][:todos][3][:name] = 'Orange Juice'
   todo_lists[1] = nil (only one item in the array)

   INCORRECT


3. todo_lists[0][:todos][2][:name] = 'Orange Juice'
   todo_lists[0] = {
    id: 1,
    list_name: 'Groceries',
    todos: [
      { id: 1, name: 'Bread', completed: false },
      { id: 2, name: 'Milk', completed: false },
      { id: 3, name: 'Apple Juice', completed: false }
    ]
  }
  todo_lists[0][:todos] = [
    { id: 1, name: 'Bread', completed: false },
    { id: 2, name: 'Milk', completed: false },
    { id: 3, name: 'Apple Juice', completed: false }
  ]
  todo_lists[0][:todos][2] = { id: 3, name: 'Apple Juice', completed: false }
  todo_lists[0][:todos][2][:name] = 'Apple Juice'
  This correctly accesses the name of the juice we want to change

    CORRECT

4. todo_lists[:todos][2][:name] = 'Orange Juice'
   todo_lists[:todos] = nil
   THis is an array so you need to use indices to access what you want

   INCORRECT

=end
