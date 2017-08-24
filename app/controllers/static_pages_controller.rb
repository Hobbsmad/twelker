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
    ContactusMailer.newcontact(params[:email], params[:title], params[:name], params[:subject], params[:phone], params[:company]).deliver
    redirect_to root_url, gflash: { success: 'Thank you for contacting us!  We will be in touch soon!' }
  end
end
