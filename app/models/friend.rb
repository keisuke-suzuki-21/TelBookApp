class Friend < ApplicationRecord
    has_secure_password
    
    validates :name, presence: true, length: { maximum: 10, allow_blank: true }


    class << self
        def search(query)
            rel = order("name")
            if query.present?
                rel = rel.where("name LIKE ? ", "%#{query}%")
            end
            rel
        end
    end
end
