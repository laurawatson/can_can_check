
UserRole.delete_all
User.delete_all
Foo.delete_all
Bar.delete_all
Role.delete_all

admin_user = User.create!(
  email: 'admin@example.com',
  password: 'password',
  password_confirmation: 'password',
)

adviser_user = User.create!(
  email: 'adviser@example.com',
  password: 'password',
  password_confirmation: 'password',
)

foo = Foo.create(name: 'foo')
bar = Bar.create(name: 'bar')

admin_role = Role.create(name: 'admin')
adviser_role = Role.create(name: 'adviser')

UserRole.create(user: admin_user, role: admin_role)
UserRole.create(user: adviser_user, role: adviser_role, subject: foo)
