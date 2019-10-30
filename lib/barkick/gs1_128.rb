module Barkick
  class GS1_128
    def initialize(number)
      @number = number.to_s
    end

    def valid?
      @number.length == 44
    end
  end
end
