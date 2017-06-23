require 'Matrix'

class MoniController < ApplicationController

  def new
  end

  def monitorizacao
  	@distritos = Distrito.all
  	@m = []
  	@a = 0
  	for i in  (0..(@distritos.size-1))
  		@praias = Praia.where("distritos_id = ?", @distritos[i].id)
  		Matrix.rows(@m.to_a << @praias)
  	end

  	@listapraias = Praia.all
  	@mleis = []
  	for i in  (0..(@listapraias.size-1))
  		@leituras = Leitura.where("praias_id = ?", @listapraias[i].id)
  		@max=0
  		for i in (0..(@leituras.size-1))
  			if @leituras[i].id>@max
  				@max=@leituras[i].id
  				@datahora=@leituras[i].data
  			end
  		end
  		@temperatura=Temperatura.find_by(:leituras_id => @max)
  		@luminosidade = Luminosidade.find_by(:leituras_id => @max)
  		@pressao = Pressao.find_by(:leituras_id => @max)
  		@humidade = Humidade.find_by(:leituras_id => @max)
  		@data = @datahora.to_date
  		@hour = @datahora.strftime("%H:%M")
  		@leituratotal = []
  		@leituratotal.push(@temperatura,@luminosidade,@pressao,@humidade,@data,@hour)
  		Matrix.rows(@mleis.to_a << @leituratotal)
  	end
  end

  def create
    @aux = current_user
    if @aux==nil
      flash.now[:danger] = 'Não possui sessão iniciada'
      monitorizacao
      render 'monitorizacao'
    else
      @id= params[:moni][:id]
      Rails.logger.debug("CAGANITA: #{@aux.id.inspect}")
      ActiveRecord::Base.connection.execute("INSERT INTO praias_utilizadors(utilizador_id,praia_id) VALUES(#{@aux.id},#{@id})")
      flash.now[:sucess] = 'Praia adicionada aos favoritos'
      monitorizacao
      render 'monitorizacao'
    end
  end
end
