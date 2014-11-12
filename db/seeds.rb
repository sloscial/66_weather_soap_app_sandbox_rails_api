# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Destroy all existing admins.
Admin.destroy_all
# Create default admin user.
Admin.create(email: 'steve@anypresence.com', password: '22c2e6ba819227b9')

