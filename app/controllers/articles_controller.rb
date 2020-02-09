class ArticlesController < ApplicationController
   # GET /articles
    def index
     @articles = Article.all  
   end 
   
   #GET /articles/:id
    def show
        # ENCONTRAR UN REGISTRO POR ID
      @article = Article.find(params[:id])
      #Article.where.not("id = ?",params[:id])
   end
   
   #GET /articles/new
   def new
    @article = Article.new
   end

   def edit
    @article = Article.find(params[:id])
   end
   
   #POST /articles
   def create
    @article = current_user.articles.new(article_params)
   if  @article.save
    redirect_to @article
    else
        render :new
   end
end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy #Destroy elimina el objeto de la DB
        redirect_to articles_path
    end


   #PUT /articles/:id
   def update
     @article = Article.find(params[:id])
     if @article.update(article_params)  
        redirect_to @article
     else
        render :edit
   end
end

   private

   def article_params
       params.require(:article).permit(:title, :body)

   end
end