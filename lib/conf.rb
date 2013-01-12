require "conf/version"


module Conf
  autoload :Configus, 'conf/configus'

  def self.build
    return Conf::Configus.new
  end
end
