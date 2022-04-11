class Comment < ApplicationRecord
  # attr_accessible :body, :commenter
  belongs_to :post
end
