require_relative 'todolist.rb'

# Creates a new todo list
groceries = TodoList.new("Groceries")
# Add four new items
groceries.add_item("Milk")
groceries.add_item("Oil")
groceries.add_item("Cookies")
groceries.add_item("Ham")
# Print the list
puts groceries.title
groceries.items.each do |item|
  puts item.description
end
# Delete the first item
groceries.items.delete_at(0)
# Print the list
puts groceries.title
groceries.items.each do |item|
  puts item.description
end
# Delete the second item

# Print the list

# Update the completion status of the first item to complete

# Print the list

# Update the title of the list

# Print the list
