# encoding: utf-8

class CheckinController < ApplicationController
  def index
    @ubs = Unidade.find(params[:unidade])
    @remedio = Remedio.find_by_nome(params[:remedio])
  end

  def tem_remedio
    @unidade = Unidade.find(params[:unidade])
    @remedio = Remedio.find(params[:remedio])

    @checkin = Checkin.new
    @checkin.user = current_user
    @checkin.unidade = @unidade
    @checkin.remedio = @remedio

    if @checkin.save
      flash[:notice] = "Obrigado por avisar da retirada desse medicamento!"
      redirect_to root_path
    end

  end

  def nao_tem_remedio
    flash[:notice] = "Obrigado por avisar da ausência desse medicamento!"
    redirect_to root_path
  end

end
