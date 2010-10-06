require 'ffi'

module FFI
  module Cairo
    class UserDataKey < FFI::Struct

      layout :unused, :int

    end
  end
end
