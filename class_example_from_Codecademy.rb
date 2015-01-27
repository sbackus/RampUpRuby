class Computer
   
   @@users = {}
   
   def initialize(username,password)
      @username = username
      @password = password
      @files = {}
      @@users[username] = password
    end
    
    def create(filename)
        time = Time.now
        @files[filename] = time
        puts "New files created at: #{time}"
    end
    
    def get_users()
        @@users
    end
    
    def add_user(username,password)
        @@users[username] = password
    end
end

my_computer = Computer.new("Chris",12345)
my_computer.add_user("Rhys",99999)

my_computer.create("text")

puts my_computer.get_users

my_computer.get_users.each {|k,v| puts v}