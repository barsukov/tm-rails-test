# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
   AdminUser.create(email: 'admin@example.com',  password: 'password',password_confirmation: "password",role: "admin")
   AdminUser.create(email: 'cm@example.com',  password: 'password',password_confirmation: "password",role: "campaign_manager")
