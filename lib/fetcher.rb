def syscall(*cmd)
  begin
    stdout, stderr, status = Open3.capture3(*cmd)
    status.success? && stdout.slice!(0..-(1 + $/.size)) # strip trailing eol
  rescue
  end
end

puts "Getting the weather now"
puts "Enter City: "
city = gets.chomp
weather = syscall(city)
puts weather
puts "all done!"
