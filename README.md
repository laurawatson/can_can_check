# README

## Setup 
To setup the app run the folllowing:
```
bundle
rails db:create
rails db:migrate
rails db:seed
```

## The application basics
After running the seeds you will have two users:  

An admin user:  
  - email: admin@example.com  
  - password: password  

An adviser user:  
  - email: adviser@example.com   
  - password: password  
  
The access is as follows:
```
if user.admin?
  can :manage, :all
end
if user.adviser?
  can :read, Foo, user_roles: { user: user }
end
```
  
 ## The problem
When you first login as the Adviser user and try to access the foo show page it will redirect you to the home page, despite the adviser user having access to foo. If you then head back to the foo show page you will be allowed in. 

It is also impossible to test this as tests preload everything. 
