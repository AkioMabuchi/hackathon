class UsersController < ApplicationController
  protect_from_forgery except: %w[twitter_post logout]


  def index
  end

  def show
  end

  def login_form
  end

  def logout
    session[:user_id] = nil
    redirect_to "/"
  end

  def twitter_callback
    auth_hash = request.env["omniauth.auth"]
    @provider = auth_hash[:provider]
    @twitter_uid = auth_hash[:uid]
    @name = auth_hash[:info][:name]
    @image = auth_hash[:info][:image]
    @description = auth_hash[:info][:description]
    @url = auth_hash[:info][:urls][:Website]
    @twitter_url = auth_hash[:info][:urls][:Twitter]
  end

  def twitter_post
    if params[:provider] == "twitter"
      if session[:user].nil?
        user = User.find_by(twitter_uid: params[:twitter_uid])
        if user
          session[:user_id] = user.id
          redirect_to "/"
        else
          permalink = generate_random_token 16
          new_user = User.new(
              twitter_uid: params[:twitter_uid],
              permalink: permalink,
              name: params[:name],
              remote_image_url: params[:image],
              description: params[:description],
              url: params[:url],
              twitter_url: params[:twitter_url],
              is_published_url: false,
              is_published_twitter_url: false
          )

          if new_user.save
            redirect_to "/"
          else
            flash[:notice] = "Twitterでの新規登録に失敗しました"
            redirect_to "/login"
          end
        end
      else
        flash[:notice] = "すでにログインしています"
        redirect_to("/")
      end
    else
      flash[:notice] = "Twitter認証に失敗しました"
      redirect_to("/")
    end
  end

  def auth_failure
    redirect_to("/")
  end

  private

  def generate_random_token(length)
    r = ""
    (1..length).each {
      c = rand(36).to_s(36)
      r += c
    }
    r
  end
end
