30.times do |i|
  users << User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

# create 3 course push them on course array
3.times do |i|
  courses << Course.create(name: Faker::Educator.course_name)
end

# go through each course and add 10 enrollments
courses.each do |course|
  10.times do
    # Enrollment.create(role: roles.sample, user_id: users.sample.id, course_id:course.id )
    course.enrollments.create(role: roles.sample, user_id: users.sample.id)
  end
end

puts "seeded"
puts Course.all.size # 3
puts User.all.size # 30
puts Enrollment.all.size #  3 * 10 = 30