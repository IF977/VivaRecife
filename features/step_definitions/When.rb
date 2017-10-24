When(/^I click on the (.+) link$/) do |page_name|
    visit(page_name)
end

When(/^put ([^"]*) on the ([^"]*) input$/) do |data,input|
    fill_in(input, :with => data)
end

When(/^put ([^"]*) on the ([^"]*) textarea$/) do |data,input|
    fill_in(input, :with => data)
end

When(/^click on the ([^"]*) button$/) do |button|
    click_button(button)
end
