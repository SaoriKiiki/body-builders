class CategoriasController < ApplicationController
  def new
      @categoria = Categoria.new
  end

  def show
      @categoria = Categoria.find(params{:id})
  end

  def index
      @categoria = Categoria.all
  end
end
