class StoreController < ApplicationController
	include CurrentCart
	before_action :set_cart
	skip_before_action :authorize
  def index
  	# get the products in alphabetical order
  	@products = Product.order(:title)
  end
end
