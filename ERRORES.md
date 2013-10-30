Archivo que contiene los informes de errores del sistema, en la ejecución.

----------------------------------------------------------------------------
Primer Error: Al añadir fichero spec/fraccion_rspec.rb
----------------------------------------------------------------------------
Sergio@sergio-HP-Pavilion-dv6-Notebook-PC:~/Practica LPP/practica6$ rake
rspec -I. spec/fraccion_rspec.rb --format documentation
/usr/lib/ruby/2.0.0/rubygems/core_ext/kernel_require.rb:45:in `require': cannot load such file -- lib/fraccion.rb (LoadError)
	from /usr/lib/ruby/2.0.0/rubygems/core_ext/kernel_require.rb:45:in `require'
	from /home/sergio/Practica LPP/practica6/spec/fraccion_rspec.rb:1:in `<top (required)>'
	from /var/lib/gems/2.0.0/gems/rspec-core-2.14.6/lib/rspec/core/configuration.rb:896:in `load'
	from /var/lib/gems/2.0.0/gems/rspec-core-2.14.6/lib/rspec/core/configuration.rb:896:in `block in load_spec_files'
	from /var/lib/gems/2.0.0/gems/rspec-core-2.14.6/lib/rspec/core/configuration.rb:896:in `each'
	from /var/lib/gems/2.0.0/gems/rspec-core-2.14.6/lib/rspec/core/configuration.rb:896:in `load_spec_files'
	from /var/lib/gems/2.0.0/gems/rspec-core-2.14.6/lib/rspec/core/command_line.rb:22:in `run'
	from /var/lib/gems/2.0.0/gems/rspec-core-2.14.6/lib/rspec/core/runner.rb:80:in `run'
	from /var/lib/gems/2.0.0/gems/rspec-core-2.14.6/lib/rspec/core/runner.rb:17:in `block in autorun'
rake aborted!
Command failed with status (1): [rspec -I. spec/fraccion_rspec.rb --format ...]
/home/sergio/Practica LPP/practica6/Rakefile:10:in `block in <top (required)>'
Tasks: TOP => default => doc
(See full trace by running task with --trace)

---------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------
Segundo Error: NO se ha creado ninguna clase Fraccion
--------------------------------------------------------

sergio@sergio-HP-Pavilion-dv6-Notebook-PC:~/Practica LPP/practica6$ rake
rspec -I. spec/fraccion_rspec.rb --format documentation
/home/sergio/Practica LPP/practica6/spec/fraccion_rspec.rb:3:in `<top (required)>': uninitialized constant Fracciones (NameError)
	from /var/lib/gems/2.0.0/gems/rspec-core-2.14.6/lib/rspec/core/configuration.rb:896:in `load'
	from /var/lib/gems/2.0.0/gems/rspec-core-2.14.6/lib/rspec/core/configuration.rb:896:in `block in load_spec_files'
	from /var/lib/gems/2.0.0/gems/rspec-core-2.14.6/lib/rspec/core/configuration.rb:896:in `each'
	from /var/lib/gems/2.0.0/gems/rspec-core-2.14.6/lib/rspec/core/configuration.rb:896:in `load_spec_files'
	from /var/lib/gems/2.0.0/gems/rspec-core-2.14.6/lib/rspec/core/command_line.rb:22:in `run'
	from /var/lib/gems/2.0.0/gems/rspec-core-2.14.6/lib/rspec/core/runner.rb:80:in `run'
	from /var/lib/gems/2.0.0/gems/rspec-core-2.14.6/lib/rspec/core/runner.rb:17:in `block in autorun'
rake aborted!
Command failed with status (1): [rspec -I. spec/fraccion_rspec.rb --format ...]
/home/sergio/Practica LPP/practica6/Rakefile:10:in `block in <top (required)>'
Tasks: TOP => default => doc
(See full trace by running task with --trace)

--------------------------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------
Tercer Error: Fallan los test para ver si existe el numerado y denominador
-----------------------------------------------------------------------------

Fraccion
  Debe haber un numerador (FAILED - 1)
  Debe haber un denominador (FAILED - 2)

Failures:

  1) Fraccion Debe haber un numerador
     Failure/Error: @fraccion.numerador == :numerador
     NoMethodError:
       undefined method `numerador' for nil:NilClass
     # ./spec/fraccion_rspec.rb:11:in `block (2 levels) in <top (required)>'

  2) Fraccion Debe haber un denominador
     Failure/Error: @fraccion.denominador == :denominador
     NoMethodError:
       undefined method `denominador' for nil:NilClass
     # ./spec/fraccion_rspec.rb:15:in `block (2 levels) in <top (required)>'

Finished in 0.00176 seconds
2 examples, 2 failures

Failed examples:

rspec ./spec/fraccion_rspec.rb:10 # Fraccion Debe haber un numerador
rspec ./spec/fraccion_rspec.rb:14 # Fraccion Debe haber un denominador
rake aborted!
Command failed with status (1): [rspec -I. spec/fraccion_rspec.rb --format ...]
/home/sergio/Practica LPP/practica6/Rakefile:10:in `block in <top (required)>'
Tasks: TOP => default => doc
(See full trace by running task with --trace)

-----------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------
Error 3: Falla al reducir la expresion a su minima expresion
--------------------------------------------------------------

sergio@sergio-HP-Pavilion-dv6-Notebook-PC:~/Practica LPP/practica6$ rake
rspec -I. spec/fraccion_rspec.rb --format documentation

Fraccion
  Debe haber un numerador
  Debe haber un denominador
  La fracción debe estar reducida a su mínima expresión (FAILED - 1)

Failures:

  1) Fraccion La fracción debe estar reducida a su mínima expresión
     Failure/Error: @a.forma_reducida == :forma_reducida
     NoMethodError:
       undefined method `forma_reducida' for #<Fraccion:0x00000001b60598 @numerador=15, @denominador=5>
     # ./spec/fraccion_rspec.rb:21:in `block (2 levels) in <top (required)>'

Finished in 0.00173 seconds
3 examples, 1 failure

Failed examples:

rspec ./spec/fraccion_rspec.rb:20 # Fraccion La fracción debe estar reducida a su mínima expresión
rake aborted!
Command failed with status (1): [rspec -I. spec/fraccion_rspec.rb --format ...]
/home/sergio/Practica LPP/practica6/Rakefile:10:in `block in <top (required)>'
Tasks: TOP => default => doc
(See full trace by running task with --trace)

-----------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------
Error 4: Fallan los métodospara devolver numerador y denominador, no existen
------------------------------------------------------------------------------------


sergio@sergio-HP-Pavilion-dv6-Notebook-PC:~/Practica LPP/practica6$ rake
rspec -I. spec/fraccion_rspec.rb --format documentation

Fraccion
  Debe haber un numerador
  Debe haber un denominador
  La fracción debe estar reducida a su mínima expresión
  Se debe invocar al metodo denom() para obtener el denominador (FAILED - 1)
  Se debe invocar al metodo num() para obtener el numerador (FAILED - 2)

Failures:

  1) Fraccion Se debe invocar al metodo denom() para obtener el denominador
     Failure/Error: @fraccion.denom == @fraccion.denominador
     NoMethodError:
       undefined method `denom' for nil:NilClass
     # ./spec/fraccion_rspec.rb:25:in `block (2 levels) in <top (required)>'

  2) Fraccion Se debe invocar al metodo num() para obtener el numerador
     Failure/Error: @fraccion.num == @fraccion.numerador
     NoMethodError:
       undefined method `num' for nil:NilClass
     # ./spec/fraccion_rspec.rb:29:in `block (2 levels) in <top (required)>'

Finished in 0.00274 seconds
5 examples, 2 failures

Failed examples:

rspec ./spec/fraccion_rspec.rb:24 # Fraccion Se debe invocar al metodo denom() para obtener el denominador
rspec ./spec/fraccion_rspec.rb:28 # Fraccion Se debe invocar al metodo num() para obtener el numerador
rake aborted!
Command failed with status (1): [rspec -I. spec/fraccion_rspec.rb --format ...]
/home/sergio/Practica LPP/practica6/Rakefile:10:in `block in <top (required)>'
Tasks: TOP => default => doc
(See full trace by running task with --trace)

-----------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------
Error 4: Fallan el metodo flotante, no esta descrita la fncionalidad
------------------------------------------------------------------------------------
sergio@sergio-HP-Pavilion-dv6-Notebook-PC:~/Practica LPP/practica6$ rake
rspec -I. spec/fraccion_rspec.rb --format documentation

Fraccion
  Debe haber un numerador
  Debe haber un denominador
  La fracción debe estar reducida a su mínima expresión
  Se debe invocar al metodo denom() para obtener el denominador
  Se debe invocar al metodo num() para obtener el numerador
15 / 5
  Muestre la fraccion por consola de la forma: a/b.
  Debe mostrar la fraccion en forma decimal (FAILED - 1)

Failures:

  1) Fraccion Debe mostrar la fraccion en forma decimal
     Failure/Error: @a.mostrar_flotante.should
     NoMethodError:
       undefined method `mostrar_flotante' for #<Fraccion:0x000000026a4260 @numerador=15, @denominador=5>
     # ./spec/fraccion_rspec.rb:37:in `block (2 levels) in <top (required)>'

Finished in 0.0032 seconds
7 examples, 1 failure

Failed examples:

rspec ./spec/fraccion_rspec.rb:36 # Fraccion Debe mostrar la fraccion en forma decimal
rake aborted!
Command failed with status (1): [rspec -I. spec/fraccion_rspec.rb --format ...]
/home/sergio/Practica LPP/practica6/Rakefile:10:in `block in <top (required)>'
Tasks: TOP => default => doc
(See full trace by running task with --trace)

-----------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------
Error 5: no se encuentra la funcion abs
----------------------------------------------------------
sergio@sergio-HP-Pavilion-dv6-Notebook-PC:~/Practica LPP/practica6$ rake
rspec -I. spec/fraccion_rspec.rb --format documentation

Fraccion
  Debe haber un numerador
  Debe haber un denominador
  La fracción debe estar reducida a su mínima expresión
  Se debe invocar al metodo denom() para obtener el denominador
  Se debe invocar al metodo num() para obtener el numerador
15 / 5
  Muestre la fraccion por consola de la forma: a/b.
3.0
  Debe mostrar la fraccion en forma decimal
  Comparar si las fracciones son iguales con ==
  Calcular valor absoluto con abs (FAILED - 1)

Failures:

  1) Fraccion Calcular valor absoluto con abs
     Failure/Error: @a.abs.should
     NoMethodError:
       undefined method `abs' for #<Fraccion:0x0000000296a8c8 @numerador=15, @denominador=5>
     # ./spec/fraccion_rspec.rb:45:in `block (2 levels) in <top (required)>'

Finished in 0.00397 seconds
9 examples, 1 failure

Failed examples:

rspec ./spec/fraccion_rspec.rb:44 # Fraccion Calcular valor absoluto con abs
rake aborted!
Command failed with status (1): [rspec -I. spec/fraccion_rspec.rb --format ...]
/home/sergio/Practica LPP/practica6/Rakefile:10:in `block in <top (required)>'
Tasks: TOP => default => doc
(See full trace by running task with --trace)

-----------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------
Error 6: no se encuentra la funcion reciprocal ni -(opuesto)
----------------------------------------------------------

sergio@sergio-HP-Pavilion-dv6-Notebook-PC:~/Practica LPP/practica6$ rake
rspec -I. spec/fraccion_rspec.rb --format documentation

Fraccion
  Debe haber un numerador
  Debe haber un denominador
  La fracción debe estar reducida a su mínima expresión
  Se debe invocar al metodo denom() para obtener el denominador
  Se debe invocar al metodo num() para obtener el numerador
15 / 5
  Muestre la fraccion por consola de la forma: a/b.
3.0
  Debe mostrar la fraccion en forma decimal
  Comparar si las fracciones son iguales con ==
15 / 5
  Calcular valor absoluto con abs
  Calculo reciproco de una fraccion con el metodo reciprocal (FAILED - 1)
  Debe calcular el opuesto de una fraccion con - (FAILED - 2)

Failures:

  1) Fraccion Calculo reciproco de una fraccion con el metodo reciprocal
     Failure/Error: @a.reciprocal.should
     NoMethodError:
       undefined method `reciprocal' for #<Fraccion:0x00000001e60d88 @numerador=15, @denominador=5>
     # ./spec/fraccion_rspec.rb:49:in `block (2 levels) in <top (required)>'

  2) Fraccion Debe calcular el opuesto de una fraccion con -
     Failure/Error: @a.-
     NoMethodError:
       undefined method `-' for #<Fraccion:0x00000001e73cd0 @numerador=15, @denominador=5>
     # ./spec/fraccion_rspec.rb:54:in `block (2 levels) in <top (required)>'

Finished in 0.0101 seconds
11 examples, 2 failures

Failed examples:

rspec ./spec/fraccion_rspec.rb:48 # Fraccion Calculo reciproco de una fraccion con el metodo reciprocal
rspec ./spec/fraccion_rspec.rb:53 # Fraccion Debe calcular el opuesto de una fraccion con -
rake aborted!
Command failed with status (1): [rspec -I. spec/fraccion_rspec.rb --format ...]
/home/sergio/Practica LPP/practica6/Rakefile:10:in `block in <top (required)>'
Tasks: TOP => default => doc
(See full trace by running task with --trace)

-----------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------
Error 6: no encuentra funciones aritmeticas
----------------------------------------------------------
sergio@sergio-HP-Pavilion-dv6-Notebook-PC:~/Practica LPP/practica6$ rake
rspec -I. spec/fraccion_rspec.rb --format documentation

Fraccion
  Debe haber un numerador
  Debe haber un denominador
  La fracción debe estar reducida a su mínima expresión
  Se debe invocar al metodo denom() para obtener el denominador
  Se debe invocar al metodo num() para obtener el numerador
15 / 5
  Muestre la fraccion por consola de la forma: a/b.
3.0
  Debe mostrar la fraccion en forma decimal
  Comparar si las fracciones son iguales con ==
15 / 5
  Calcular valor absoluto con abs
5 / 15
  Calculo reciproco de una fraccion con el metodo reciprocal
-5 / 15
  Debe calcular el opuesto de una fraccion con -
  Sumar fracciones y mostrar el resultado reducido (FAILED - 1)
  Restar fracciones y mostrar el resultado reducido (FAILED - 2)
  Multiplicar fracciones y mostrar el resultado reducido (FAILED - 3)
  Dividir fracciones y mostrar el resultado reducido (FAILED - 4)

Failures:

  1) Fraccion Sumar fracciones y mostrar el resultado reducido
     Failure/Error: (@a + @b).should
     NoMethodError:
       undefined method `+' for #<Fraccion:0x00000001a28658 @numerador=15, @denominador=5>
     # ./spec/fraccion_rspec.rb:59:in `block (2 levels) in <top (required)>'

  2) Fraccion Restar fracciones y mostrar el resultado reducido
     Failure/Error: (@a - @b).should
     NameError:
       uninitialized constant Fraccion::Fracciones
     # ./lib/fraccion.rb:65:in `-'
     # ./spec/fraccion_rspec.rb:63:in `block (2 levels) in <top (required)>'

  3) Fraccion Multiplicar fracciones y mostrar el resultado reducido
     Failure/Error: (@a * @b).should
     NoMethodError:
       undefined method `*' for #<Fraccion:0x00000001a31bb8 @numerador=15, @denominador=5>
     # ./spec/fraccion_rspec.rb:67:in `block (2 levels) in <top (required)>'

  4) Fraccion Dividir fracciones y mostrar el resultado reducido
     Failure/Error: (@a / @b).should
     NoMethodError:
       undefined method `/' for #<Fraccion:0x00000001a4a258 @numerador=15, @denominador=5>
     # ./spec/fraccion_rspec.rb:71:in `block (2 levels) in <top (required)>'

Finished in 0.00806 seconds
15 examples, 4 failures

Failed examples:

rspec ./spec/fraccion_rspec.rb:58 # Fraccion Sumar fracciones y mostrar el resultado reducido
rspec ./spec/fraccion_rspec.rb:62 # Fraccion Restar fracciones y mostrar el resultado reducido
rspec ./spec/fraccion_rspec.rb:66 # Fraccion Multiplicar fracciones y mostrar el resultado reducido
rspec ./spec/fraccion_rspec.rb:70 # Fraccion Dividir fracciones y mostrar el resultado reducido
rake aborted!
Command failed with status (1): [rspec -I. spec/fraccion_rspec.rb --format ...]
/home/sergio/Practica LPP/practica6/Rakefile:10:in `block in <top (required)>'
Tasks: TOP => default => doc
(See full trace by running task with --trace)

-----------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------
Error 7: no encuentra funcion modulo
----------------------------------------------------------

sergio@sergio-HP-Pavilion-dv6-Notebook-PC:~/Practica LPP/practica6$ rake
rspec -I. spec/fraccion_rspec.rb --format documentation

Fraccion
  Debe haber un numerador
  Debe haber un denominador
  La fracción debe estar reducida a su mínima expresión
  Se debe invocar al metodo denom() para obtener el denominador
  Se debe invocar al metodo num() para obtener el numerador
15 / 5
  Muestre la fraccion por consola de la forma: a/b.
3.0
  Debe mostrar la fraccion en forma decimal
  Comparar si las fracciones son iguales con ==
15 / 5
  Calcular valor absoluto con abs
5 / 15
  Calculo reciproco de una fraccion con el metodo reciprocal
-5 / 15
  Debe calcular el opuesto de una fraccion con -
  Sumar fracciones y mostrar el resultado reducido
  Restar fracciones y mostrar el resultado reducido
  Multiplicar fracciones y mostrar el resultado reducido
  Dividir fracciones y mostrar el resultado reducido
  Calcular el resto de dos fracciones y mostrar el resultado reducido (FAILED - 1)

Failures:

  1) Fraccion Calcular el resto de dos fracciones y mostrar el resultado reducido
     Failure/Error: (@a % @b).should
     NoMethodError:
       undefined method `%' for #<Fraccion:0x00000002b1eea8 @numerador=15, @denominador=5>
     # ./spec/fraccion_rspec.rb:75:in `block (2 levels) in <top (required)>'

Finished in 0.00712 seconds
16 examples, 1 failure

Failed examples:

rspec ./spec/fraccion_rspec.rb:74 # Fraccion Calcular el resto de dos fracciones y mostrar el resultado reducido
rake aborted!
Command failed with status (1): [rspec -I. spec/fraccion_rspec.rb --format ...]
/home/sergio/Practica LPP/practica6/Rakefile:10:in `block in <top (required)>'
Tasks: TOP => default => doc
(See full trace by running task with --trace)

-----------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------
Error 8: no encuentra funciones comparacionales
----------------------------------------------------------
sergio@sergio-HP-Pavilion-dv6-Notebook-PC:~/Practica LPP/practica6$ rake
rspec -I. spec/fraccion_rspec.rb --format documentation

Fraccion
  Debe haber un numerador
  Debe haber un denominador
  La fracción debe estar reducida a su mínima expresión
  Se debe invocar al metodo denom() para obtener el denominador
  Se debe invocar al metodo num() para obtener el numerador
15 / 5
  Muestre la fraccion por consola de la forma: a/b.
3.0
  Debe mostrar la fraccion en forma decimal
  Comparar si las fracciones son iguales con ==
15 / 5
  Calcular valor absoluto con abs
5 / 15
  Calculo reciproco de una fraccion con el metodo reciprocal
-5 / 15
  Debe calcular el opuesto de una fraccion con -
  Sumar fracciones y mostrar el resultado reducido
  Restar fracciones y mostrar el resultado reducido
  Multiplicar fracciones y mostrar el resultado reducido
  Dividir fracciones y mostrar el resultado reducido
  Calcular el resto de dos fracciones y mostrar el resultado reducido
  Comprobar si una fraccion es menor (FAILED - 1)
  Comprobar si una fraccion es mayor (FAILED - 2)
  Comprobar si una fraccion es menor o igual (FAILED - 3)
  Comprobar si una fraccion es mayor o igual (FAILED - 4)

Failures:

  1) Fraccion Comprobar si una fraccion es menor
     Failure/Error: (@a < @b).should
     NoMethodError:
       undefined method `<' for #<Fraccion:0x0000000209d628 @numerador=15, @denominador=5>
     # ./spec/fraccion_rspec.rb:79:in `block (2 levels) in <top (required)>'

  2) Fraccion Comprobar si una fraccion es mayor
     Failure/Error: (@a > @b).should
     NoMethodError:
       undefined method `>' for #<Fraccion:0x0000000209c570 @numerador=15, @denominador=5>
     # ./spec/fraccion_rspec.rb:83:in `block (2 levels) in <top (required)>'

  3) Fraccion Comprobar si una fraccion es menor o igual
     Failure/Error: (@a <= @b).should
     NoMethodError:
       undefined method `<=' for #<Fraccion:0x000000020a3460 @numerador=15, @denominador=5>
     # ./spec/fraccion_rspec.rb:87:in `block (2 levels) in <top (required)>'

  4) Fraccion Comprobar si una fraccion es mayor o igual
     Failure/Error: (@a >= @b).should
     NoMethodError:
       undefined method `>=' for #<Fraccion:0x000000020a2218 @numerador=15, @denominador=5>
     # ./spec/fraccion_rspec.rb:91:in `block (2 levels) in <top (required)>'

Finished in 0.00841 seconds
20 examples, 4 failures

Failed examples:

rspec ./spec/fraccion_rspec.rb:78 # Fraccion Comprobar si una fraccion es menor
rspec ./spec/fraccion_rspec.rb:82 # Fraccion Comprobar si una fraccion es mayor
rspec ./spec/fraccion_rspec.rb:86 # Fraccion Comprobar si una fraccion es menor o igual
rspec ./spec/fraccion_rspec.rb:90 # Fraccion Comprobar si una fraccion es mayor o igual
rake aborted!
Command failed with status (1): [rspec -I. spec/fraccion_rspec.rb --format ...]
/home/sergio/Practica LPP/practica6/Rakefile:10:in `block in <top (required)>'
Tasks: TOP => default => doc
(See full trace by running task with --trace)


