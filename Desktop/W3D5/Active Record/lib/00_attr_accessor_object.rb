class AttrAccessorObject
  def self.my_attr_accessor(*names)
    names.each do |x|
      define_method(x) do
        self.instance_variable_get("@#{x}")
      end
      define_method("#{x}=") do |y|
        self.instance_variable_set("@#{x}", y)
      end
    end
  end
end
