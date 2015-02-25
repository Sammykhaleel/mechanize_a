require 'mechanize'
require 'open-uri'

agent = Mechanize.new
agent.get("http://www.yelp.com/events/create")
form = agent.page.forms.first
form.email = 'sammykhaleel83@gmail.com'
form.password = 'swsw1235'
agent.page.forms[0]["venue_name"] = "Test"
# agent.page.forms[0].submit
# form.add_field! 'send','Submit'
# puts form.submit
home_page = form.submit

# Navigating by links
add_page = home_page.link_with(text: 'Add photo').click

# We need to check first check box check(), to uncheck uncheck():
add_page.form.checkbox_with.check

# We need to check a first radio:
add_page.form.radiobuttons_with(:name => 'type')[0].check

# We need to set select list value to the first option:
add_page.form.field_with(name: 'Mood').options[0].select

# We need to upload file in form:
add_page.form.file_upload.file_name = "./#{path}/#{file_name}"