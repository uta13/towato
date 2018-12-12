class User < ApplicationRecord
  validates :email,{presence: true,uniqueness: true}
  validates :name,{presence: true}
  validates :password,{presence: true}

  def posts
    return Post.where(author_id: self.id)
  end
end
