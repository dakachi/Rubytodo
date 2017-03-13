require 'restaurant'
require 'support/string_extend'
class Guide
  class Config
    @@actions = ['list', 'find', 'add', 'quit']
    def self.actions; @@actions; end
  end
  
  def initialize(path=nil)
    # locate the restaurant text file at path
    Restaurant.filepath = path
    if Restaurant.file_usable?
      puts "Found restaurant file."
    # or create a new file
    elsif Restaurant.create_file
      puts "Created restaurant file."
    # exit if create fails
    else
      puts "Exiting.\n\n"
      exit!
    end
  end

  def launch!
    introduction
    # action loop
    result = nil
    until result == :quit
      action, args = get_action
      result = do_action(action, args)
    end
		conclusion
  end
    
  def list
    # list all todo item
  end

  def add
    # add todo
  end

  def archive
    # archive a todo
  end
  
end
