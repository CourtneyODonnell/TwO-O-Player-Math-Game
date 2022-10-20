# Tips
# Isolate your I/O logic to one or two classes. Don't allow all your classes to interact (gets/puts) with the User
# Remember to build incrementally, writing small amounts of runnable code instead of writing out a whole bunch of classes/methods that are not yet testable/runnable.
# Use puts, raise some_val.inspect, and byebug to help with debugging


require './game'
require './player'
require './question'
require '.answer'




=begin 
CLASS SYNTAX EXAMPLE:
class Person
  def initialize(name)
    @name = name
  end
end


INCREMENT BY ONE EXAMPLE:
class Message
    @@messages_sent = 0

  def initialize(from, to)
    @from = from
    @to = to
    @@messages_sent += 1
  end
end

OOP EXAMPLE:
class Message 
  @@messages_sent = 0
  def initialize(from, to)
    @from = from 
    @to = to 
    @@messages_sent +=1 
  end
end

class Email < Message
  def initialize(from, to)
  super
  end
end

my_message = Message.new("booboo123", "password123")

OOP EXAMPLE #2:
class Computer
  @@users = {}
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end
  
  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was created at #{time} by #{@username}. "
  end

  def Computer.get_users
    @@users
  end

end

my_computer = Computer.new("cornelius", "password123")

=end