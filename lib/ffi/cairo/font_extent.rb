require 'ffi'

module FFI
  module Cairo
    class FontExtent < FFI::Struct

      layout :ascent, :double,
             :descent, :double,
             :height, :double,
             :max_x_advance, :double,
             :max_y_advance, :double

    end
  end
end
