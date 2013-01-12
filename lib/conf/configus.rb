module Conf
  class Configus

    def initialize(hash)
      hash.each do |key, value|
        define_singleton_method(key) do
          if value.is_a? Hash
            self.class.new value
          else
            value
          end
        end
      end
    end
  end
end