module Conf
  class Builder
    attr_reader :conf_hash

  	def self.build(env, block)
  		b = new(env, block)
      Configus.new(b.conf_hash[env])
    end

    def initialize(env, block)
      @conf_hash = {}
    	instance_eval &block
    end

  	def env(name, &block)
  	  @conf_hash[name] = Proxy.build(block)
  	end

  end
end