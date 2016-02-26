class ServerConfig
  @@config = {}

  def self.set(key, value)
    @@config[key] = value
  end

  def self.get(key)
    @@config[key]
  end
end




