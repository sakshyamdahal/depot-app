module CurrentCart
	extend ActiveSupport::Concern

	# can share code between controllers and prevent from being an action
	private

		def set_cart
			@cart = Cart.find(session[:cart_id])
		rescue ActiveRecord::RecordNotFound
			@cart = Cart.create
			session[:cart_id] = @cart.id
		end
end