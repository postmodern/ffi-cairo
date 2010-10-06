require 'ffi'

module FFI
  module Cairo
    class Glyph < FFI::Struct

      layout :index, :uint,
             :x, :double,
             :y, :double

    end
  end
end
