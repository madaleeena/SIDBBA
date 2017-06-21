class MoniController < ApplicationController
  def monitorizacao
  	@cenas = Praia.all
  end
end
