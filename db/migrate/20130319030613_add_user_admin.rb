class AddUserAdmin < ActiveRecord::Migration
#  admin = Admin.create(email: 'nampt@nexlesoft.com', password: 'nexlesoft', password_confirmation: 'nexlesoft')
  user = User.create(email: 'nampt@nexlesoft.com', password: 'nexlesoft', password_confirmation: 'nexlesoft')
#  admin.update_attributes(confirmation_token: nil, confirmed_at: Time.now)
end
