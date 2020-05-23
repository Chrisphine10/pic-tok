# frozen_string_literal: true

class Post < ApplicationRecord
  acts_as_votable
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image
end
