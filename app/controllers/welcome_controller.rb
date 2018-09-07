class WelcomeController < ApplicationController
        def index
            @users = User.all
            @posts = Post.all
            @categorias = Categoria.all

        end

        def show
            @users = User.find(params{:id})
            @categorias = Categoria.find(params{:id})
        end


end
