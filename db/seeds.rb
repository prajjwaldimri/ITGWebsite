User.create!(name: "Prajjwal Dimri",
             email: "prajjwaldimri@hotmail.com",
             rollno: "141340101018",
             password: "20081997",
             password_confirmation: "20081997",
             user_type: "Student",
             branch: "Computer Science",
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
               branch: "Civil",
               user_type: "Student")

end

users = User.order(:created_at).take(6)
50.times do
  title = Faker::Lorem.characters(20)
  subject = Faker::Lorem.characters(10)
  semester = Faker::Number.number(1)
  users.each{|user| user.assignments.create!(title: title, subject: subject, semester: semester)}
end

4.times do |n|
  title = Faker::Lorem.sentence(11) + "#{n}"
  content = Faker::Lorem.paragraphs(5)
  post_type = Faker::Lorem.characters(10)
  user_id = 1
  article = Article.new(
    title: title,
    content: content,
    post_type: post_type,
    user_id: user_id
  )
  article.save!
end
