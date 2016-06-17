require_relative 'todolist.rb'

# Creates a new todo list
groceries = TodoList.new("Groceries")

# Add four new items
groceries.add_item("Milk")
groceries.add_item("Nuts")
groceries.add_item("Eggs")
groceries.add_item("Soda")

# Print the list
def print_list(list)
  puts "-"*10
  puts list.title
  puts "-"*10
  list.items.each do |item|
    puts (list.items.index(item) + 1).to_s + " - " + item.description + "\tCompleted: " + item.completed_status.to_s
  end
end

print_list(groceries)

# Delete the first item
groceries.items.delete_at(0)

# Print the list
print_list(groceries)

# Delete the second item
groceries.items.delete_at(1)

# Print the list
print_list(groceries)

# Update the completion status of the first item to complete
groceries.items[0].is_completed?

# Print the list
print_list(groceries)

# Update the title of the list
groceries.title = "Stuff to buy"

# Print the list
print_list(groceries)
