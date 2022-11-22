class Post < ApplicationRecord
  validates :title, exclusion: { in: ["True Facts"] }
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  validates :title, presence: true

#   def title_cannot_allow
#     # if !title.include? "Won't Believe" || "Secret" || "Top [number]" || "Guess"
#     #   errors.add(:title, "Title cannot have this values")
#     # end

#   end
end

# "Won't Believe"
# "Secret"
# "Top [number]"
# "Guess"
