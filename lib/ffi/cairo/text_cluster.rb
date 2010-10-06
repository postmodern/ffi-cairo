require 'ffi'

module FFI
  module Cairo
    class TextCluster < FFI::Struct

      layout :num_bytes, :int,
             :num_glyphs, :int

    end
  end
end
