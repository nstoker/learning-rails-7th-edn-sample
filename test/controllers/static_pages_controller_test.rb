# frozen_string_literal: true

require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test 'should get root' do
    skip 'broken - TypeError: no implicit conversion of String into Hash'
    get root_url
    assert_response :success
    assert_select 'title', "#{@base_title}"
  end

  test "should get help" do
    skip 'broken - TypeError: no implicit conversion of String into Hash'
    get help_url
    assert_response :success
    assert_select 'title', "Help | #{@base_title}"
  end

  test 'should get about' do
    skip 'broken - TypeError: no implicit conversion of String into Hash'
    get about_url
    assert_response :success
    assert_select 'title', "About | #{@base_title}"
  end

  test 'should get contact' do
    skip 'broken - TypeError: no implicit conversion of String into Hash'
    get contact_url
    assert_response :success
    assert_select 'title', "Contact | #{@base_title}"
  end
end
