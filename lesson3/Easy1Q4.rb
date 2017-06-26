# The Ruby Array class has several methods for removing items from the array. Two of them have very similar names.
# Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]

# What do the following method calls do (assume we reset numbers to the original array between method calls)?

numbers.delete_at(1)

# It deletes the element at the specified index and returns that element deleted.
# So 2 will be deleted and [1, 3, 4, 5] will be printed to the screen
# 2 will be returned

numbers.delete(1)
# It deletes all items from self that are equal to the object and retunrs the last deleted item.
# So 1 will be deleted and [2, 3, 4, 5] will be printed to the screen
# 1 will be returned
