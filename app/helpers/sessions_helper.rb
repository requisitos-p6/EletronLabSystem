module SessionsHelper

	def	login(user)
		session[:user_id]	=	user.id
	end

	def	current_user
		@current_user	||=	User.find_by(id: session[:user_id])
	end

	def	logged_in?
		!current_user.nil?
	end

	def log_out
        session.delete(:user_id)
        @current_user = nil
    end

    def authenticate_user
        redirect_to login_path unless logged_in?
    end

    def verify_user_permission
        user = User.find(params[:id])
        redirect_to_back(users_path) unless user.id == current_user.id or current_user.admin?
    end

    def verify_admin_permission
        redirect_to(root_path) unless current_user.admin?
    end

end
