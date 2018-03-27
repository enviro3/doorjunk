class HomeController < ApplicationController

  def index
    @current_page='index'
  end

  def faq
    @current_pages='faq'
  end

  def products
    @current_page='products'
  end

  def about
    @current_page='about'
  end

  def takeAction
    @current_page='takeAction'
  end

  def cart
    @current_page='cart'
  end

  def contact
    @current_page='contact'
  end
end
