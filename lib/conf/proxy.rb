module Conf
  class Proxy < BasicObject
  	attr_reader :result

  	def self.build(block)
  		p = new(block)
      p.result
    end

    def initialize(block)
    	@result = {}
    	instance_eval &block
    end

  	def method_missing(key, value, &block)
  		@result[key] = value
  	end
  end
end