Then /^I should be on (.+) link$/ do |page_name|
  request.request_uri.should == "#{page_name.downcase.gsub(' ','_')}_path}"
  response.should be_success
end

Then(/^I should see the text ([^"]*)$/) do |text|
    expect(page).to have_content(text)
end