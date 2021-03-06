class ArticlesController < ApplicationController
	before_action :set_article, only: [:edit, :update, :show, :destroy]
	#this ensure set_article will call and run first at specific method.

	def index
		@articles = Article.all
	end

	def new
		@article = Article.new
		#code instruction same as in rails console in IDE 
	end

	def edit
		set_article
	end

	def create
		@article = Article.new(article_params)
		if @article.save
			flash[:notice] = "Article was successfully created"
			redirect_to article_path(@article)
		else
			render 'new'
		end
	end

	def update
		set_article
		if @article.update(article_params)
			flash[:notice] = "Article was successfully updated"
			redirect_to article_path(@article)
		else
			render 'edit'
		end
	end

	def show
		set_article
	end

	def destroy
		set_article
		@article.destroy
		flash[:notice] = "Article was successfully deleted"
		redirect_to articles_path
	end

	private
	def set_article
		@article = Article.find(params[:id])
	end

	def article_params
		params.require(:article).permit(:title, :description)
	end
end