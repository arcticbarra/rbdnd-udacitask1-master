class TodoList
  attr_reader :title, :items

  def initialize(list_title = "Default")
      @title = list_title
      @items = Array.new
  end


  def change_title(list_title)
    @title = list_title
  end

  def add_item(new_item)
    item = Item.new(new_item)
    @items.push(item)
  end

  def delete_item(index)
    @items.delete_at(index)
  end

  def print_list
    puts "-"*10
    puts @title
    puts "-"*10
    @items.each do |item|
      puts (@items.index(item) + 1).to_s + item.format_list
    end
    puts
  end

  def save_to_file
    todo_file = File.new("todo.txt", "w+")
    todo_file.puts "-"*10
    todo_file.puts @title
    todo_file.puts "-"*10
    @items.each do |item|
      todo_file.puts (@items.index(item) + 1).to_s + item.format_list
    end
    todo_file.puts
  end

end

class Item
  attr_reader :description, :completed_status, :due_date, :time_created, :importance

   def initialize(item_description)
      @description = item_description
      @completed_status = false
      @due_date = "Today"
      @time_created = Time.now.strftime(%"c")
      @importance = "Low"
   end

   def is_completed?
     @completed_status
   end

   def set_high_importance
     @importance = "High"
   end

   def change_status
     @completed_status = !@completed_status
   end

   def set_due_date(due)
     @due_date = due
   end

   def format_list
     " - " + @description + (@importance == "High" ? "*" : "") + "\tCompleted:  " + @completed_status.to_s + "\t\tDue date: " + @due_date
   end

end
