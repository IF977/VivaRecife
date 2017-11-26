Then /^I should be on the (.+) link$/ do |page_name|
  request.request_uri.should == "#{page_name.downcase.gsub(' ','_index_path')}}"
  response.should be_success
end

Then(/^I should see the text ([^"]*)$/) do |text|
    expect(page).to have_content(text)
end