class Message

  # token
  def self.invalid_token
    'invalid token'
  end

  def self.missing_token
    'missing token'
  end

  def self.expired_token
    'sorry, your token has expired. please login to continue.'
  end

  # user
  def self.not_found(record = 'record')
    "sorry, #{record} not found."
  end

  def self.invalid_credentials
    'invalid credentials'
  end

  def self.unauthorized
    'unauthorized request'
  end

  def self.user_created
    'user created successfully'
  end

  def self.user_not_created
    'user could not be created'
  end

  # books
  def self.book_created
    'book added successfully'
  end

  def self.book_updated
    'book updated successfully'
  end

  def self.book_deleted
    'book removed successfully'
  end

  # favourites
  def self.favourite_created
    'book added to favourites successfully'
  end

  def self.favourite_deleted
    'book removed from favourites successfully'
  end

end