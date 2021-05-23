class Hotel < ApplicationRecord
    has_many :reservations
    has_many :travelers, through: :reservations

    has_many :reviews
    
    # before_create :slugify
    # def slugify
    #     self.slug =name.parameterize
    # end

    def avg_score
        return self.rating || 0 unless reviews.count.positive? 

        (reviews.average(:score).to_f + self.rating)/2
    end


end
