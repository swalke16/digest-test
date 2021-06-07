require "test_helper"
require 'minitest/mock'

class UserArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article = articles(:one)
    @user = users(:one)
  end

  test "should get index" do
    log = StringIO.new
    log_proc = lambda { |msg|
      log << msg
      return
    }
    Rails.logger.stub(:error, log_proc) do
      get user_articles_url(@user)
      refute log.string.include? "Couldn't find template for digesting: articles_controllers/user_articles/index"
    end
  end
end
