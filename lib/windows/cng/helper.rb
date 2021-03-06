module Windows
  module CNGHelper
  end
end

class String
  unless instance_methods.include?(:wincode)
    # Convenience method for converting strings to UTF-16LE for wide character
    # functions that require it.
    def wincode
      (self.tr(File::SEPARATOR, File::ALT_SEPARATOR) + 0.chr).encode('UTF-16LE')
    end
  end
end
