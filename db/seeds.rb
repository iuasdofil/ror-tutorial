50.times do
  todo = Todo.create(title: Faker::Lorem.word, created_by: User.last.id)
  todo.items.create(name: Faker::Lorem.word, done: false)
end
