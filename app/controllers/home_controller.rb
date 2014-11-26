class HomeController < ApplicationController
  def index

  end

  def prova
    @perguntas = Question.where(prova: true)
  end

  def marcar
    @pergunta = Question.find(params[:id])
    @pergunta.prova = true
    @pergunta.save
    redirect_to "/prova"
  end

  def desmarcar
    @pergunta = Question.find(params[:id])
    @pergunta.prova = false
    @pergunta.save
    redirect_to "/prova"
  end

end
