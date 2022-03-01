module Shared
  def check_user
    render json: { message: "Unauthorized!" }, status: :unauthorized unless current_user == @article.user
  end
end
