class ProductLandingPage
  include PageObject

  def add_to_compare_button (j)
    self.class.button(:add_to_compare, :css => "ul[data-test-element='product-list'] li:nth-child(#{j}) button")
    return self.add_to_compare_element
  end

  def get_product_model (j)
    self.class.p(:product_model, :css => "ul[data-test-element='product-list'] li:nth-child(#{j}) p[itemprop='model']")
    return self.product_model_element
  end

  def get_product_manufacturer (j)
    self.class.p(:product_manufacturer, :css => "ul[data-test-element='product-list'] li:nth-child(#{j}) p[itemprop='manufacturer']")
    return self.product_manufacturer_element
  end

  def get_number_of_products_in_comparison(page)
    page.all(:css, ".cont-products-compare.active li").length
  end

  def get_product_manufacturer_comparison (j)
    self.class.p(:product_manufacturer_comparison, :css => ".cont-products-compare.active li:nth-of-type(#{j}) .manufacturer")
    return self.product_manufacturer_comparison_element
  end

  def get_product_model_comparison (j)
    self.class.p(:product_model_comparison, :css => ".cont-products-compare.active li:nth-of-type(#{j}) .model")
    return self.product_model_comparison_element
  end

end