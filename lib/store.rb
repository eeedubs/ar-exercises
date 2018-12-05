class Store < ActiveRecord::Base
    has_many :employees
    validates :name, presence: true, length: { minimum: 3 }
    validates :annual_revenue, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    validate :apparel_must_be_present

    def apparel_must_be_present
        if (mens_apparel == nil && womens_apparel == nil) || (mens_apparel == false && womens_apparel == false)
            errors.add(:apparel, "Store must sell mens or womens apparel")
        end
    end
end