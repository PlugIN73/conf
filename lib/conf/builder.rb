module Conf
  class Builder
    attr_reader :conf_hash

  	def self.build(env, block)
  		b = new(env, block)
      Configus.new(b.conf_hash)
    end

    def initialize(env, block)
      @envs = {}
    	instance_eval &block
      parent = @envs[env][:parent]
      @conf_hash = @envs[env][:hash]
      while parent do
        @conf_hash = @envs[parent][:hash].deep_merge @conf_hash
        parent =  @envs[parent][:parent]
      end
    end
    #{:production=>{:hash=>{:port=>666, :server=>{:mail=>123, :host=>""}}}, :test=>{:parent=>:production, :hash=>{:port=>777}}}
  	def env(name, options = {},  &block)
  	  @envs[name] = options.merge :hash => Proxy.build(block)
  	end

  end
end