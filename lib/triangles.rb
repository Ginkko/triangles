class Triangle
  define_method(:initialize) do |a, b, c|
    @a = a
    @b = b
    @c = c
    @triangle = [a, b, c]

    if @a.+(@b).>(@c) & @a.+(@c).>(@b) & @b.+(@c).>(@a)
      @is_valid = true
    else
      @is_valid = false
    end

  end

   define_method(:sort) do
     @triangle.sort!()
   end

  define_method(:valid?) do
    @a.+(@b).>(@c) & @a.+(@c).>(@b) & @b.+(@c).>(@a)
  end

  define_method(:triangle_type) do
      if valid?().!()
        "Not Valid"
      elsif @a.eql?(@b).&(@b.eql?(@c))
        "Equilateral"
      elsif @a.eql?(@b).|(@a.eql?(@c)).|(@b.eql?(@c))
        "Isosceles"
      else
        "Scalene"
      end
  end
end
