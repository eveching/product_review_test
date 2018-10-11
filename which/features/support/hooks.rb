Before do
  @plp = ProductLandingPage.new($browser)
  $browser.manage.window.maximize
end

After do
  $browser.manage.delete_all_cookies
end