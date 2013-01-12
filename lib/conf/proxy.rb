module Conf
  class Proxy
  	attr_reader :result

  	def self.build(block)
  		p = new(block)
      p.result
    end

    def initialize(block)
    	@result = {}
    	instance_eval &block
    end

  	def method_missing(name, *args, &block)
  		if block
        @result[name] = Proxy.build(block)
      else
        @result[name] = args.first
      end
  	end
  end
end