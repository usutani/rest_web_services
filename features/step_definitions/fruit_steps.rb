Given /^the system knows about the following fruit:$/ do |fruits|
  FruitApp.data = fruits.hashes
end

When /^the client requests GET (.*)$/ do |path|
  get(path)
end

Then /^the response should be JSON:$/ do |json|
  JSON.parse(last_response.body).should == JSON.parse(json)
end

