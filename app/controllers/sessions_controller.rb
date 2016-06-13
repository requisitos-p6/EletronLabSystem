class SessionsController < ApplicationController
  
  def new
  end

  def create
  	user = User.find_by(nickname: params[:session][:nickname])
				if user && user.authenticate(params[:session][:password])
						login user
						redirect_to user				
				else
						flash[:danger] = 'Senha ou Nickname inválidos'
						render	'new'
				end
  end

  def destroy
  end

end
