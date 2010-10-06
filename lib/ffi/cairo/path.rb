require 'ffi'

module FFI
  module Cairo
    class Path < FFI::Struct

      layout :status, :cairo_status,
             :data, :pointer,
             :num_data, :int

    end
  end
end
