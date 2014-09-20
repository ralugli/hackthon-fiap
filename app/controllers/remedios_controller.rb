class RemediosController < ApplicationController

  before_action :authenticate_user!

  def index
  end

  def search
    # @remedio = Remedio.where("nome like ?", "%#{params[:nome_remedio]}%")
    # binding.pry
  end

  def all
    render :json => Remedio.all, only: [:nome]
  end

end
