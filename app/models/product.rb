class Product < ActiveRecord::Base
	has_many :line_items
	before_destroy :ensure_not_referenced_by_any_line_item


	validates :title, :description, :image_url, presence: true
	validates :price, numericality: { greater_than_or_equal_to: 0.01 }
	validates :title, uniqueness: true

	REGEX_EXPRESSION = %r{\.(gif|jpg|png)\Z}i
	validates :image_url, allow_blank: true, format: {
		with: REGEX_EXPRESSION, message: 'must be a URL for git,jpg or png image'
	}

	def self.latest
		Product.order(:updated_at).last
	end

	private

		# ensure that there are no line items referencing this product
		# hook method if returns false product will not be deleted
		def ensure_not_referenced_by_any_line_item
			if line_items.empty?
				return true
			else
				errors.add(:base, 'Line Items present')
				return false
			end
		end
end
