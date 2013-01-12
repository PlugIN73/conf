module Conf

  class Configus

    def initialize (hash)
      hash.each do |key, value|
        if value.is_a? Hash
          self.class.new value
        else
          define_singleton_method(key) do
            value
          end
        end
      end
    end

  end

end