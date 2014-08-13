class PagesController < ApplicationController

  def home
  end

  def contacts
  end

  def partners
  end

  def macadamia
  	@products = Product.where('category = ?','macadamia').order(:title)
  end

  def sexyhair
  	@products = Product.where('category = ?','sexyhair').order(:title)
  end

  def bosley
  	@products = Product.where('category = ?','bosley').order(:title)
  end
end
