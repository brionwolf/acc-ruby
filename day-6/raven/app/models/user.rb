class User < ActiveRecord::Base

	has_many :tweets, dependent: :destroy
	has_many :relationships, foreign_key: "follower_id", dependent: :destroy
	has_many :followed_users, through: :relationships, source: :followed
	has_many :reverse_relationships, foreign_key: "followed_id", class_name: "relationships", dependent: :destroy
	has_many :followers, through: :reverse_relationships, source: :follower

	before_save {self.email = email.downcase }
	before_create :create_remember_token

	validates :name, presence: true, length: {maximum: 50}

	has_secure_password
	validates_confirmation_of :password, if: -> (m) {m.password.presence}
	validates :password, length: {minimum: 6}
	validates :slug, uniqueness: true

	def to_param
		slug
	end

	def feed
		r = Relationship.arel_table
		t = Caws.arel_table
		sub_query = t[:user_id].in(r.where(r[:follower_id].eq(id)).project)
		Caws.where(sub_query.or(t[:user_id].eq(id)))
	end



end