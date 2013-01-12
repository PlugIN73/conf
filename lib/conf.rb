require "conf/version"

module Conf
  autoload :Configus, 'conf/configus'
  autoload :Builder, 'conf/builder'
  autoload :Proxy, 'conf/proxy'

  def self.build (env, &block)
    Builder.build(env, block)
  end
end
