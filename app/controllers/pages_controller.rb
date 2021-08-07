class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:account]

  def home
  end

  def contact
  end

  def about
  end

  # user account related
  def account
  end

end
