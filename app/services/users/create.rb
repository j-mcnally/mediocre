module Users
  class Create
    class << self
      def call(options)
        email = options[:email]
        password = options[:password] || SecureRandom.hex(22)
        u = User.create(email: email, password: password)
      end
    end
  end
end