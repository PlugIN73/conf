require "conf/version"

module Conf
  autoload :Configus, 'conf/configus'
  autoload :Builder, 'conf/builder'
  autoload :Proxy, 'conf/proxy'

  def self.build (env, &block)
    configus = Builder.build(env, block)
    return configus
  end
end
