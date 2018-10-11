Given /^I'm on the "([^\"]*)" landing page$/ do |site|
  visit "#{BASE_URL}/reviews/#{site}"
  expect(page).to have_content("television reviews")
end

When /^I add the first (\d+) products to compare$/ do |total_products|
  scroll_down_page
  add_products_to_compare(total_products)
end

Then /^I can see the products added into the product comparison list at the bottom of the page$/ do
  get_products_in_comparison_list
  compare_products_in_comparison_list
end

And /^I add another product to compare$/ do
  within(:css, 'ul[data-test-element=\'product-list\']') do
     expect(page).to have_css("button[type='button']", :text => 'Add to compare')
     page.first('button', :text => 'Add to compare').click
  end
end

Then /^I can see the error message "([^\"]*)" displayed$/ do |error_message|
  expect(page).to have_css(".msg", :text => error_message)
end

When /^I remove first product from the product comparison list$/ do
  @first_product_model = @plp.get_product_model_comparison(1).text

  within(:css, '.cont-products-compare.active') do
     expect(page). to have_css(".action-remove.icon-close")
     page.first('.action-remove.icon-close').click
  end
end

Then /^I can see the first product is removed$/ do
  within(:css, '.cont-products-compare.active') do
    expect(page).to have_no_content(@first_product_model)
  end
end

And /^I can see the first product has the "Add to compare" button$/ do
    within(:xpath, "//p[text()='#{@first_product_model}']") do
      expect(page).to have_selector(:xpath, "//button[text()='Add to compare']")
    end
end