class StaticPagesController < ApplicationController
  def index
  end

  def about
  end

  def contact
  end

  def client
  end

  def contactemail
    @email = params[:email]
    @name = params[:name]
    @title = params[:title]
    @phone = params[:phone]
    @subject = params[:subject]
    if params[:name].empty?
      gflash :now, :error => "Name cannot be empty"
      render('contact')
      return
    end
    if params[:email].empty?
      gflash :now, :error => "Email cannot be empty"
      render('contact')
      return
    end
    ContactusMailer.newcontact(params[:email], params[:title], params[:name], params[:subject], params[:phone], params[:company]).deliver
    redirect_to root_url, gflash: { success: 'Thank you for contacting us!  We will be in touch soon!' }
  end

  def training
  end

  def statement
  end
end
