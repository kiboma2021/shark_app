# STEPS

- rails new sharkapp
- rails g scaffold Shark name:string description:text
- rails db:create
- rails db:migrate

# To see rails commands
- rails -T
- rails -T db <!---view only database commands-->

# seed the database
rails db:seed