class User < ApplicationRecord

  has_many :sent_messages, class_name: 'Message', foreign_key: 'sender_id'
  has_many :received_messages, class_name: 'Message', foreign_key: 'receiver_id'

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
end
