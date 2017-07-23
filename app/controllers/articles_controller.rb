class ArticlesController < ApplicationController
	def new
		@article = Article.new
		#code instruction same as in rails console in IDE 
	end

	def create
		@article = Article.new(article_params)
		@article.save
		redirect_to articles_path(@article)
	end

	private
	def article_params
		params.require(:article).permit(:title, :description)
	end
end