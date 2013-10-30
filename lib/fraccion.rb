class Fraccion
attr_accessor :numerador, :denominador

	#inizializador de fracciones
	def initialize(num, den)
        	@numerador, @denominador = num, den
    	end


	def mostrar_fraccion
		puts "#{@numerador} / #{@denominador}"
	end

	def mostrar_flotante
                puts @numerador.to_f / @denominador.to_f
        end

	def forma_reducida
                divisor = gcd(@numerador,@denominador)	
                numerador = @numerador / divisor
                denominador = @denominador / divisor
        end
        
	def gcd(num, den)
		if(den > 0)
		return gcd(den, num % den)
                elsif(num < 0)
                	return -num
                else
                	return num
                end
	end

	def denom
        	@denominador
        end
        
        def num
        	@numerador
        end

	def abs
	if @numerador > 0
		numerador = @numerador
	else
		numerador = -@numerador
	end
	if @denominador > 0
		denominador = @denominador
	else
		denominador = -@denominador
	end
	
	end

        def reciprocal #recíproco de una fracción
		Fraccion.new(@denominador,@numerador)
end
        def op
                        numerador = -@denominador
                        denominador = @numerador
                        Fraccion.new(numerador,denominador)
               
        end

	def - (o)
                 if(@denominador == o.denom)
                          return Fraccion.new(@numerador - o.num, o.denom).forma_reducida
                 else
                                 puts "No se pueden restar"
                 end
	end
	
	 def +(o)
		 if(@denominador == o.denom)
		 	return Fraccion.new(@numerador + o.num, o.denom).forma_reducida
	 	else
	 		puts "No se pueden sumar"
	 	end
	end

	def *(o)
		return Fraccion.new(@numerador * o.num, @denominador * o.denom).forma_reducida
	end

	def /(o)
		return Fraccion.new(@numerador * o.denom, @denominador * o.num).forma_reducida
	end

        def %(o)
		l = @numerador * o.denom
		r = @denominador * o.num
		n = l/r
		Fraccion.new( l - n * r, @denominador * o.denominador).forma_reducida
	end

	def >=(o)
                float1 = @numerador.to_f / @denominador.to_f
                float2 = o.num.to_f / o.denom.to_f
                if(float1 >= float2)
                        return true
                end
	                false
	end

        def <(o)
                float1 = @numerador.to_f / @denominador.to_f
                float2 = o.num.to_f / o.denom.to_f
                if(float1 < float2)
                        return true
                end
                	false
        end
        
        def >(o)
                float1 = @numerador.to_f / @denominador.to_f
                float2 = o.num.to_f / o.denom.to_f
                if(float1 > float2)
                        return true
                end
                	false
		
        end
        
        def <=(o)
                float1 = @numerador.to_f / @denominador.to_f
                float2 = o.num.to_f / o.denom.to_f
                if(float1 <= float2)
                        return true
                end
                false
        end



end

