class Post < ApplicationRecord
 belongs_to :user
 belongs_to :community
 validates_presence_of :title, :body, :user_id, :community_id
 has_many :comments

  def score
    1
  end

end