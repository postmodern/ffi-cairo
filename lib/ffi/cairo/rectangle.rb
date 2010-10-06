require 'ffi'

module FFI
  module Cairo
    class Rectangle < FFI::Struct

      layout :x, :double,
             :y, :double,
             :width, :double,
             :height, :double

    end
  end
end
