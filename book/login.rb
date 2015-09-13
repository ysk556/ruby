require 'capybara'
require 'capybara/dsl'
require 'selenium-webdriver'

Capybara.current_driver = :selenium
Capybara.app_host = "https://affiliate.amazon.co.jp/"
Capybara.default_max_wait_time = 5

module Crawler
  class Amazon
    include Capybara::DSL

    def login
      visit('')
      fill_in "username",
        :with => 'ts3820@gmail.com'
      fill_in "password",
        :with => 'h94c423h'
      click_button "サインイン"
    end
  end
end

crawler = Crawler::Amazon.new
crawler.login
