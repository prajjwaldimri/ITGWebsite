User.create!(name: "Prajjwal Dimri",
             email: "prajjwaldimri@hotmail.com",
             rollno: "141340101018",
             password: "20081997",
             password_confirmation: "20081997",
             user_type: "Student",
             admin: true)
99.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password#{n}"
  rollno = "11#{n+1}#{n+2}#{n+3}"
  User.create!(name: name,
               email: email,
               rollno: rollno,
               password: password,
               password_confirmation: password,
               user_type: "Student")

end

users = User.order(:created_at).take(6)
50.times do
  title = Faker::Lorem.sentence(1)
  subject = Faker::Lorem.sentence(1)
  semester = 2
  users.each{|user| user.assignments.create!(title: title, subject: subject, semester: semester)}
end
