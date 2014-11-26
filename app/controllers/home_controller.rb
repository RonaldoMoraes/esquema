class HomeController < ApplicationController
  def index

  end

  def prova
    @perguntas = Question.where(prova: true)
  end
end
