(1..10).each do |time|
  p = Project.create(name:"Project ##{time}", description:"blahblahblah")
  loops = rand(1..5)
  loops.times.each do |loop|
    p.time_entries.create(hours: rand(1..10), minutes: rand(0..60), comment: "comment ##{loop}", date: Date.today)
  end
end

puts "Projects created"
