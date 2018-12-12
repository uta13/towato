class PostsController < ApplicationController
  before_action :authenticate_user,{only: [:show,:edit,:update,:create,:new]}
  before_action :forbid_login_user,{only: [:new,:create,:login_form,:login]}
  before_action :ensure_correct_user,{only: [:edit,:update]}
  def index
    @posts = Post.all.order(created_at: :desc).limit(8)
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find_by(id: params[:id])
    @likes_count = Like.where(post_id: @post.id).count
  end

  def create
    @post = Post.new(title: params[:title], author: @current_user.name, content: params[:content], author_id: @current_user.id )
    if @post.save
      redirect_to("/posts/#{@post.id}")
    else
      render("posts/new")
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.title = params[:title]
    @post.content = params[:content]

    if params[:image]
      @post.image_name = "#{@post.id}.png"
      image = params[:image]
      File.binwrite("public/post_images/#{@post.image_name}", image.read)
    end

    if @post.save
      flash[:notice] = "変更を保存しました"
      redirect_to("/posts/#{@post.id}")
    else
      render("posts/edit")
    end
  end


end
