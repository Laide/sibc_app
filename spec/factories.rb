# By using the symbol ':user', we get Factory Girl to simulate the User model.
Factory.define :user do |user|
  user.name                  "Laide Olanlokun"
  user.email                 "lo00051@surrey.ac.uk"
  user.password              "medlyd"
  user.password_confirmation "medlyd"
end

Factory.sequence :email do |n|
  "person-#{n}@surrey.ac.uk"
end

Factory.define :micropost do |micropost|
  micropost.content "Med lyd"
  micropost.association :user
end


