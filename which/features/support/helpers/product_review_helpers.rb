module ProductReviewHelpers

def add_products_to_compare(total_products)
  @product_hash = Hash.new

  for i in 2..total_products+1 do
    @product_hash[@plp.get_product_model(i).text] = @plp.get_product_manufacturer(i).text
    @plp.add_to_compare_button(i).click
  end
end

def get_products_in_comparison_list
  total_products_compare = @plp.get_number_of_products_in_comparison(page)

  @product_hash_comparison = Hash.new

  for i in 1..total_products_compare do
    @product_hash_comparison[@plp.get_product_model_comparison(i).text] = @plp.get_product_manufacturer_comparison(i).text
  end
end

def compare_products_in_comparison_list
  expect(@product_hash).to eql(@product_hash_comparison)
end

def scroll_down_page
  page.execute_script("window.scrollTo(0,Math.max(document.documentElement.scrollHeight," +
                          "document.body.scrollHeight,document.documentElement.clientHeight));")
end

end
World(ProductReviewHelpers)