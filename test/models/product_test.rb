require 'test_helper'

class ProductTest < ActiveSupport::TestCase
	fixtures :products

	test "product attributes must not be empty" do
		product = Product.new
		assert product.invalid?
		assert product.errors[:title].any?
		assert product.errors[:description].any?
		assert product.errors[:price].any?
		assert product.errors[:image_url].any?
	end

	test "product price must be positive" do
		product = Product.new(title: 			 "My book",
													description: "hello",
													image_url: 	 "zzz.jpg")
		product.price = -1
		assert product.invalid?
		assert_equal ["must be greater than or equal to 0.01"], product.errors[:price]

		product.price = 0
		assert product.invalid?
		assert_equal ["must be greater than or equal to 0.01"], product.errors[:price]

		product.price = 1
		assert product.valid?
	end

	test "image url" do
		ok = %w{ fred.gif fre.jpg fre.png FRed.jpg http://acbc/fb.gif }
		bad = %w{ free.doc hello.gif.more ok.gif//hello }

		# assert takes optional string parameter printed out when test fails
		ok.each do |name|
			assert new_product(name).valid?, "#{name} should be valid"
		end

		bad.each do |name|
			assert new_product(name).invalid?, "#{name} shouldn't be valid"
		end
	end

		test "product is not valid without a unique title" do
			product = Product.new(title: products(:ruby).title,
														description: "yyy",
														price: 1,
														image_url: "free.gif")
			assert product.invalid?
			assert_equal ["has already been taken"], product.errors[:title]
		end


	# helper to test image url
	def new_product(image_url)
		Product.new(title: 			 "My book",
								description: "hello",
								price:        1,
								image_url: 	 image_url)
	end


end
