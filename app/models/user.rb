class User < ActiveRecord::Base
      #has_secure_password
      # before_save :hashpass
      # attr_accessor :username,:password
      # validates_uniqueness_of :username
      # private
      #   def hashpass
      #     self.password = Digest::SHA1.hexdigest(password)
      #   end

      #validates_uniqueness_of :username
      validates :username, uniqueness: true, numericality: true

end
