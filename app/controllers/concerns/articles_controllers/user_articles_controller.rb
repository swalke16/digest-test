module ArticlesControllers
  class UserArticlesController < ArticlesController
    prepend_before_action :set_user

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:user_id])
    end

    def set_articles
      @articles = @user.articles
    end
  end
end
