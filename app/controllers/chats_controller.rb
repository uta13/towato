class ChatsController < ApplicationController
  def chat
    @post = Post.find_by(id: params[:id])
    @messages = Message.all
    @user=User.find_by(id: params[:id])
  end

  def update
    @messages = Message.new(content: params[:content])
    @post = Post.find_by(id: params[:id])
    if @messages.save
      flash[:notice]="メッセージを送信しました"
      redirect_to("/chats/#{@post.id}/chat")
    else
      render("chats/chat")
    end
  end
end
