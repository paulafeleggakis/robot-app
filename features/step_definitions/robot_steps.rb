When(/^I go to the homepage$/) do
  visit root_path
end

Then(/^I should see the welcome message$/) do
  expect(page).to have_content("My Robot")
end

And(/^I enter an x coordinate, y coordinate and orientation$/) do
  fill_in 'x_ord', with: '1'
  fill_in 'y_ord', with: '1'
  select('south', from: 'orient')
end

When(/^I press the Place Robot button$/) do
  click_on 'place_button'
end