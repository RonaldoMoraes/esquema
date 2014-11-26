class HomeController < ApplicationController
  def index

  end

  def prova
    @perguntas = Question.where(prova: true)
  end

  def marcar
    @pergunta = Question.find(params[:id])
    @pergunta.prova = @pergunta.prova == true ? false : true
    @pergunta.save
  end

end
