class Message
  def self.not_found(record = 'record')
    "sorry, #{record} not found."
  end

  def self.invalid_credentials
    'invalid credentials'
  end

  def self.invalid_token
    'invalid token'
  end

  def self.missing_token
    'missing token'
  end

  def self.unauthorized
    'unauthorized request'
  end

  def self.account_created
    'sccount created successfully'
  end

  def self.account_not_created
    'sccount could not be created'
  end

  def self.expired_token
    'dorry, your token has expired. please login to continue.'
  end
end