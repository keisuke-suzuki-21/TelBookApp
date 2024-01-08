class Friend < ApplicationRecord
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
