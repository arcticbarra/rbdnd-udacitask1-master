require_relative 'todolist.rb'

# Creates a new todo list
groceries = TodoList.new("Groceries")

# Add four new items
groceries.add_item("Milk")
groceries.add_item("Nuts")
groceries.add_item("Eggs")
groceries.add_item("Soda")

# Print the list
groceries.print_list
groceries.save_to_file

# Delete the first item
groceries.delete_item(0)

# Print the list
groceries.print_list

# Delete the second item
groceries.delete_item(1)

# Print the list
groceries.print_list

# Update the completion status of the first item to complete
groceries.items[0].change_status
groceries.items[1].set_high_importance

# Print the list
groceries.print_list

# Update the title of the list
groceries.change_title("Stuff to buy")

# Print the list
groceries.print_list
