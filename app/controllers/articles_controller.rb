class ArticlesController < ApplicationController
    
    def  index
        @articles = Article.all
    end

    def show

        @article = Article.find(params[:id])
    end

    def new
        @article = Article.new
    end

    def create
        # esta es una forma de hacerlo
        #    @article = Article.new(
        #       title: params[:article][:title],
        #       body: params[:article][:body])
        #segunda fomra
        @article = Article.new(article_params)
        @article.save

        flash.notice = "Created '#{@article.title}' Successfull!"

        redirect_to article_path(@article) 
    end

    def destroy

        @article = Article.destroy(params[:id])

        flash.notice = "Article '#{@article.title}' Deleted!"

        redirect_to article_path
    end

    def edit
        @article = Article.find(params[:id])

    end

    def update
        @article = Article.find(params[:id])
        @article.update(article_params)

        flash.notice = "Article '#{@article.title}' Update!"
      
        redirect_to article_path(@article)
    end

    def article_params
        params.require(:article).permit(:title, :body)
    end

end
