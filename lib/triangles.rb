class Triangle
  define_method(:initialize) do |a, b, c|
    @a = a
    @b = b
    @c = c
    @triangle = [@a, @b, @c]
  end

  define_method(:sort) do
    @triangle.sort!()
  end

end
