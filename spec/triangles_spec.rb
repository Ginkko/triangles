require('pry')
require('triangles')
require('rspec')

describe(Triangle) do
  describe("#sort") do
    it("sorts the values of the inputed triangle from lowest to highest") do
      test_triangle = Triangle.new(2, 3, 1)
      expect(test_triangle.sort()).to(eq([1,2,3]))
    end
  end

  describe("#valid?") do
    it("checks to see if the inputed traingle is mathmatecially possible") do
      test_triangle = Triangle.new(5, 4, 3)
      expect(test_triangle.valid?()).to(eq(true))
    end
  end

  describe("#triangle_type") do
    it("checks to see if the inputed trinagle is an equilateral triangle") do
      test_triangle = Triangle.new(3,3,3)
      expect(test_triangle.triangle_type()).to(eq("Equilateral"))
    end
  end
end
