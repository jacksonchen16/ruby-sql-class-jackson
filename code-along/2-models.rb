# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

puts "There are #{Company.all.count} companies"

# rails runner code-along/2-models.rb <----how to run this code

# 2. insert new rows in companies table
new_company = Company.new

p new_company.inspect

new_company ["name"] = "Apple"
new_company ["city"] = "Cupertino"
new_company ["state"] = "CA"
new_company ["url"] = "https://www.apple.com"
new_company.save # insert into the table

p new_company.inspect

puts "There are #{Company.all.count} companies"

company2 = Company.new

company2 ["name"] = "Amazon"
company2 ["city"] = "Seattle"
company2 ["state"] = "WA"
company2.save

p new_company.inspect

puts "There are #{Company.all.count} companies"

# 3. query companies table to find all row with California company

all_companies = Company.all
puts all_companies.inspect

cali_companies = Company.where({"state" => "CA"})
puts cali_companies.inspect

puts "CA companies: #{cali_companies.count}"

# 4. query companies table to find single row for Apple
apple = Company.find_by({"name" => "Apple"})
p apple.inspect


# 5. read a row's column value
p apple["url"]


# 6. update a row's column value
amazon = Company.find_by({"name" => "Amazon"})
p amazon["url"]
amazon["url"] = "https://amazon.com"
amazon.save #update row in table
p amazon["url"]

# 7. delete a row
twitter = Compamy.find_by({"name"} => "Twitter")
twitter.destroy
 p "There are #{Company.all.count} companies"


