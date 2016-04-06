require "json"
require "selenium-webdriver"
gem "test-unit"
require "test/unit"

#This is a quick test to verify that all pages on valleywineworks.com load successfully and that the
#webiste is basically working as expected.
class SeleniumValleyWineSmoketest < Test::Unit::TestCase

  def setup
    @driver = Selenium::WebDriver.for :firefox
    @base_url = "http://valleywineworks.com/"
    @accept_next_alert = true
    @driver.manage.timeouts.implicit_wait = 30
  end
  
  def teardown
    @driver.quit
  end

  #This is the main test that call methods to verify that each page on the website is loaded successfully.
  def test_valley_smoketest
    @driver.get(@base_url)
    verify_home_page()
    verify_services_page()
    verify_about_page()
    verify_contact_page()
    verify_faq_page()
    verify_links_page()
  end

  #verify that the home page loads successfully
  def verify_home_page
    home_header_tag = "Welcome to Valley Wine Works"

    @driver.find_element(:id, "home_lodi_wine_business_solutions").click
    assert_equal home_header_tag, @driver.find_element(:css, "#main > h1").text
    puts "INFO: Home text = #{@driver.find_element(:css, "#main > h1").text}"
    puts "PASS: home page was loaded successfully"
  end

  def verify_services_page
    services_header_tag = "Services"

    @driver.find_element(:id, "services_lodi_wine_business_solutions").click
    assert_equal services_header_tag, @driver.find_element(:css, "#main > h1").text
    puts "INFO: Services text = #{@driver.find_element(:css, "#main > h1").text}"
    puts "PASS: Services page was loaded successfully"
  end

  def verify_about_page
    about_header_tag = "About"

    @driver.find_element(:id, "about_lodi_wine_business_solutions").click
    assert_equal about_header_tag, @driver.find_element(:css, "#main > h1").text
    puts "INFO: About text = #{@driver.find_element(:css, "#main > h1").text}"
    puts "PASS: About page was loaded successfully"
  end

  def verify_contact_page
    contact_header_tag = "Contact Us"

    @driver.find_element(:id, "contact_lodi_wine_business_solutions").click
    assert_equal contact_header_tag, @driver.find_element(:css, "#main > h1").text
    puts "INFO: Contact text = #{@driver.find_element(:css, "#main > h1").text}"
    puts "PASS: Contact page was loaded successfully"
  end

  def verify_faq_page
    faq_header_tag = "Frequently Asked Questions"

    @driver.find_element(:id, "faq_lodi_wine_business_solutions").click
    assert_equal faq_header_tag, @driver.find_element(:css, "#main > h1").text
    puts "INFO: FAQ text = #{@driver.find_element(:css, "#main > h1").text}"
    puts "PASS: FAQ page was loaded successfully"
  end

  def verify_links_page
    links_header_tag = "Links"

    @driver.find_element(:id, "links_lodi_wine_business_solutions").click
    assert_equal links_header_tag, @driver.find_element(:css, "#main > h1").text
    puts "INFO: Links text = #{@driver.find_element(:css, "#main > h1").text}"
    puts "PASS: Links page was loaded successfully"
  end


end
