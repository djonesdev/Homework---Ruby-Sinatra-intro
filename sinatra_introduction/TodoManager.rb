class TodoManager
  
  #class Var
 @@todos = ["buy some milk!", "feed the cat"] 
 
  def self.index 
    @@todos 
  end
  
  def self.show (id)
    @@todos[id]
  end
 
  def self.create (new_todo)
    @@todos.push(new_todo)
  end 
  
  def self.delete (id)
    @@todos.delete_at(id)
  end  
  
  def self.update (id, new_todo)
    @@todos[id] = new_todo
  end  
end