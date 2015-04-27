class Triangle
  define_method(:initialize) do |a, b, c|
    @a = a
    @b = b
    @c = c
    @triangle = [a, b, c]
  end

   define_method(:sort) do
     @triangle.sort!()
   end

  define_method(:valid?) do
    @a.+(@b).>(@c) & @a.+(@c).>(@b) & @b.+(@c).>(@a)
  end

  define_method(:triangle_type) do
    if @a.eql?(@b).&(@b.eql?(@c))
      "Equilateral"
    end
  end

end
