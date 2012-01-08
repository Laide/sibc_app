# By using the symbol ':user', we get Factory Girl to simulate the User model.
Factory.define :user do |user|
  user.name                  "Laide Olanlokun"
  user.email                 "lo00051@surrey.ac.uk"
  user.password              "medlyd"
  user.password_confirmation "medlyd"
end
