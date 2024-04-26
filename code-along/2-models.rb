# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE - doesnt want to duplicate, never use in production only dev
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

# puts "There are #{Company.all.count} companies"

# 2. insert new rows in companies table
new_company = Company.new
# creates hash for company but data is empty

new_company["name"] = "Apple"
new_company["city"] = "Cupertino"
new_company["state"] = "CA"
new_company["url"] = "apple.com"
# new_company is a variable could be anything 
new_company.save 
#.save is the insert into function in SQL 
# p new_company

# puts "There are #{Company.all.count} companies"

company = Company.new 
company["name"]="Amazon"
company["city"]="Seattle"
company["state"] = "WA"
company.save 

# puts "There are #{Company.all.count} companies"
company = Company.new 
company["name"]="Twitter"
company["city"]="San Francisco"
company["state"] = "CA"
company.save 

# puts "There are #{Company.all.count} companies"

# 3. query companies table to find all row with California company

all_companies = Company.all 
# p all_companies

cali_companies = Company.where({"state"=> "CA"})
# p cali_companies

p "Companies in California: #{cali_companies.count}"

# 4. query companies table to find single row for Apple

apple = Company.find_by({"name"=>"Apple"})
p apple
# 5. read a row's column value
p apple["name"]
# 6. update a row's column value

amazon = Company.find_by({"name"=>"Amazon"})
amazon["url"]="https://amazon.com"
amazon.save

x = Company.find_by({"name"=>"Twitter"})
x["name"] = "X (Formerly Twitter)"
x.save

# 7. delete a row
x=Company.find_by({"name"=>"X (Formerly Twitter)"})
x.destroy

puts "There are #{Company.all.count} Companies"