require "conf/version"


module Conf
  autoload :Configus, 'conf/configus'

  def self.build (env, &block)
    configus = Builder.build (env, block)

    return configus
  end
end
