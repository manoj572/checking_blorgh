class ArticlesController < ActionController::Base
   def show
       @articles=Article.find(params[:id])
   end
   def index
       @articles=Article.all
   end
   
   def new
       @article=Article.new
   end
   def edit
     byebug
     @article=Article.find(params[:id]) 
   end
   def create
       @article=Article.new(params.require(:article).permit(:title,:description))
           if @article.save
               redirect_to @article
           else
               render 'new'
           end
   end
   def update
       @article=Article.find(params[:id])
       if @article.update(params.require(:article).permit(:title,:description))
          flash[:notice]="Article was updated"
          redirect_to @article
       else
          render 'edit'
       end
   end
   def destroy
      @articles=Article.find(params[:id]) 
      @articles.destroy
      redirect_to articles_path
   end
   def signup
   end
   def signpage
   end
   def signpage_new
    if params!=nil
     (@creates=Create.new(username:params[:username],password:params[:password],email:params[:email]))
    end
     if @creates.save
       #@create=Create.find_by(params[:username])
       @authentication_sign="successfully created account"
       render :'authentication_sign'
     else
       @authentication="failed"
       render :'authentication'
    end
    end
    def loginpage
    end
    def loginpage_new
        @status=false
        if params!=nil
            if((params[:username]!=nil) && (params[:password]!=nil) && (params[:email]!=nil))
                @creates=Create.where(username:params[:username],email:params[:email])
                @creates.each do |f|
                    if((f.username==params[:username]) && (f.password==params[:password]) && (f.email==params[:email]))
                        @status=true
                    end
                end
            end
        end
        if @status==true
            @authentication_login="login success"
            render :'authentication_login'
        else
            @authentication="login failed"
            render :'authentication'
        end
    end
end