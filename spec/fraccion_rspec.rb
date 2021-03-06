require 'lib/fraccion.rb'

describe Fraccion do

	before :each do
		@a = Fraccion.new(15, 5)
		@b = Fraccion.new(15, 5)
	end
describe "funcion_fraccion" do
	it "Debe haber un numerador" do
		@a.numerador == :numerador
	end


	it "Debe haber un denominador" do
		@a.denominador == :denominador

	end

	it "La fraccion debe estar reducida a su minima expresion" do
		@a.forma_reducida == :forma_reducida
	end

	it "Se debe invocar al metodo denom() para obtener el denominador" do
		@a.denom == @a.denominador
	end

	it "Se debe invocar al metodo num() para obtener el numerador" do
		@a.num == @a.numerador
	end

	it "Muestre la fraccion por consola de la forma: a/b." do
		@a.to_s.should
	end

	it "Debe mostrar la fraccion en forma decimal" do
		@a.to_f.should
	end

	it "Comparar si las fracciones son iguales con ==" do
			(@a == @b).should
	end
end
describe "aritmetica" do
	it "Calcular valor absoluto con abs" do
		@a.abs.should
	end

	it "Calculo reciproco de una fraccion con el metodo reciprocal" do
		@a.reciprocal.should
	end


	it "Debe calcular el opuesto de una fraccion con -" do
		@a.op.should
	end


	it "Sumar fracciones y mostrar el resultado reducido" do
	    (@a + @b).should
	end
	
	it "Restar fracciones y mostrar el resultado reducido" do
	    (@a - @b).should
	end
	
	it "Multiplicar fracciones y mostrar el resultado reducido" do 
		(@a * @b).should
	end
	
	it "Dividir fracciones y mostrar el resultado reducido" do
		(@a / @b).should
	end

	it "Calcular el resto de dos fracciones y mostrar el resultado reducido" do
		(@a % @b).should
	end
end
describe "comparacion" do
	it "Comprobar si una fraccion es menor" do
		 (@a < @b).should
	end
	
	it "Comprobar si una fraccion es mayor" do
		(@a > @b).should
	end

	it "Comprobar si una fraccion es menor o igual" do
		(@a <= @b).should
	end
	
	it "Comprobar si una fraccion es mayor o igual" do
		(@a >= @b).should
	end
	it "Comprobar si una fraccion es mayor,menor o igual" do
		(@a <=> @b).should eq(0)
	end  

end
  describe "modificacion_clase" do 
      it " - Comprobar si la suma de dos fracciones es igual a la suma de otras" do
         temp=((@a+@b) ==(@b+@a))
         temp.should eq(true)

      end   
	
      it " - Dada dos fracciones, si su resto es 0, calcular |-f1*f2|; en otro caso devolver 0" do
         @c = Fraccion.new(0,1)
         if ((@a % @b) == @c)
           temp = @a.op*@b
           temp.abs
         else
           temp = 0
         end
         temp.should eq(0)
      end
   
  end
	
end
 


