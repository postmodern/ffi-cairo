require 'ffi'

module FFI
  module Cairo
    class TextExtent < FFI::Struct

      layout :x_bearing, :double,
             :y_bearing, :double,
             :width, :double,
             :height, :double,
             :x_advance, :double,
             :y_advance, :double

    end
  end
end
