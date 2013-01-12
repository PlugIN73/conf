module Conf
  class Builder
  	def self.build(env, block)
  		b = new(env, block)
    end

    def initialize(env, block)
    	@hash = {}
    	instance_eval &block
    end

  	def env(name, &block)
  	  @hash[name] = Proxy.build(block)
  	end

  end
end