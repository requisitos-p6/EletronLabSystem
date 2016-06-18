class StaticPagesController < ApplicationController
  def home
  end

  def alerts
    flash[:success] = 'Successo!'
    flash[:info] = 'Informação!'
    flash[:warning] = 'Erro!'
    flash[:danger] = 'Problema!'
  end

  def parallax
  end

  def about
  end

end
