require 'ffi'

module FFI
  module Cairo
    class RectangleList < FFI::Struct

      layout :status, :cairo_status,
             :rectangles, :pointer,
             :num_rectangles, :int

    end
  end
end
