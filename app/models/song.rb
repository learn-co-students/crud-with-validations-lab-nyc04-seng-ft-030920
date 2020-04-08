class Song < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: true 
 
  validates :released, {in: [true , false ]}
  with_options if: :released? do |release| 
    release.validates :release_year , allow_blank: false
  end 
  
  validates :artist_name, presence: true
  validates :expiration_cannot_be_before_today

  def expiration_cannot_be_before_today
    if :release_year < Date.year
    error.add(:release_year, "cannot be less than this year ")
    end 
  end 
end
