class Song < ActiveRecord::Base

validates :title, presence: true
validates :title, uniqueness: true
validates :released, inclusion: {in: [true, false]}
validates :release_year, presence: true, if: :released
validates :release_year, numericality: { less_than_or_equal_to: Time.new.year }, if: :released
validates :artist_name, presence: true


# def released_true?
#   case :released
#   when true
#     true
#   else
#     false
#   end
# end


end
