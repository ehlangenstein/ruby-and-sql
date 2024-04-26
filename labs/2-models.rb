# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.
p "Salespeople: #{Salesperson.all.count}"
salesperson = Salesperson.new

salesperson["first_name"] = "Shelby"
salesperson["last_name"] = "Hoyt"
salesperson.save
# p salesperson




salesperson = Salesperson.new

salesperson["first_name"] = "Elizabeth"
salesperson["last_name"] = "Langenstein"
salesperson.save 

# p salesperson


# 3. write code to display how many salespeople rows are in the database
p "there are #{Salesperson.count} salespeople"
p "Salespeople: #{Salesperson.count}"

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.


me = Salesperson.find_by({"first_name"=>"Elizabeth", "last_name"=>"Langenstein"})
me["email"] = "elang@gmail.com"
me.save

# Find by gives you the first record that matches, could be multiple
# CHALLENGE:
# 5. write code to display each salesperson's full name

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng

p "Salespeople: #{Salesperson.all.count}"
salespeople = Salesperson.all
for person in salespeople
    first_name = person["first_name"]
    last_name = person["last_name"]
    p "#{first_name} #{last_name}"
end 
