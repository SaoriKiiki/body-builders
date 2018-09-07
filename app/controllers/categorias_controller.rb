class CategoriasController < ApplicationController
  def new
      @categorias = Categoria.new
  end

  def show
      @categorias = Categoria.find(params{:id})
  end

  def index
      @categorias = Categoria.all
  end
end
