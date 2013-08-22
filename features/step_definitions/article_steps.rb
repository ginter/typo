Given /^there is an article with title "(.*?)"$/ do |title|
  Article.create(title: title)
end
Then /^there should be a merged article with body "(.*?)"$/ do |body|
  Article.exists?(body: body)
end
