class RemediosController < ApplicationController

  before_action :authenticate_user!

  def index
  end

  def search
    p = params[:nome_remedio]
    @remedio = Checkin.all.joins(:remedio)
                          .joins(:unidade)
                          .select("unidades.bairro as bairro, unidades.endereco as endereco, unidades.farmacia as farmacia, unidades.telefone as telefone, DATE_FORMAT(checkins.created_at, '%d/%m/%Y %h:%i') as ultima_notificacao")
                          .where("remedios.nome like '%#{p}%'")

    @remedio = [] if params[:nome_remedio].blank?

    render json: @remedio

  end

  def ubs_proximas
    @ubs = Unidade.all
    render json: @ubs, only: [:id, :farmacia]
  end

  def all
    render json: Remedio.all, only: [:nome]
  end

end
