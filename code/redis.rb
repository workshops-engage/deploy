require 'redis'
size = 10000
r = Redis.new

puts "Inserting #{size} keys"
t0 = Time.now
size.times {|i| r.set('test'+i.to_s, 1)}
puts "Finished in #{Time.now - t0}"


puts "Deleting #{size} keys"
t0 = Time.now
size.times {|i| r.del('test'+i.to_s)}
puts "Finished in #{Time.now - t0}"
