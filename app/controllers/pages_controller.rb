class PagesController < ApplicationController
  def home

  end

  def submit_email
    Beta.create(email: params[:email])
    render text: ""
  end
end
