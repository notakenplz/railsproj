class PostsController < ApplicationController
  #@@p_page = 10
  #@@page = 1
  #@@cur_end = @@p_page*@@page;
  #@@cur_start = @@p_page*@@page-@@p_page;
  
  # GET /posts
  # GET /posts.xml
  def index
    #@posts = Post.find(:all, :conditions => {:id => udr_start(@@p_page,@@page)..udr_end(@@p_page,@@page)}, :order => '6 desc')
    #@posts = Post.all(:order => '6 desc')
    #@posts = Post.paginate(:page => params[:page], :order => '6 DESC')
    @posts = Post.search(params[:search], params[:page])
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @posts }
    end
  end
  
  def searcher
    @posts = Post.search(params[:search], params[:page])
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @posts }
    end
  end
  
  # GET /posts/1
  # GET /posts/1.xml
  def show
    @post = Post.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
    end
  end

  # GET /posts/new
  # GET /posts/new.xml
  def new
    @post = Post.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post }
    end
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.xml
  def create
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to(@post, :notice => 'Post was successfully created.') }
        format.xml  { render :xml => @post, :status => :created, :location => @post }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # def prev
  #   if @@page > 1
  #    @@page -= 1
  #  end
  #  respond_to do |format|
  #    format.html { redirect_to(@posts) }
   #   format.xml  { render :xml => @posts }
  # end
  # end

  # def next
 #   @@page += 1
# respond_to do |format|
   #   format.html { redirect_to(@posts)}
  #    format.xml  { render :xml => @posts }
      #  end
      #  end

  # PUT /posts/1
  # PUT /posts/1.xml  
  
  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to(@post, :notice => 'Post was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.xml
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to(posts_url) }
      format.xml  { head :ok }
    end
  end
  
  #protected
  # def udr_start(p_page,page)
  #  return (p_page*page)-p_page
  # end
  
  #def udr_end(p_page, page)
 #   return p_page*page
#end
end
