class StoreController < ApplicationController
  def index
  	# get the products in alphabetical order
  	@products = Product.order(:title)
  end
end
