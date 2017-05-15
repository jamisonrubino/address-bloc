greeting = ARGV.shift     # takes first argument, "yo" or "hey" in the example, and removes it from the ARGV array

ARGV.each do |name|
  puts "#{greeting} #{name}"
end
