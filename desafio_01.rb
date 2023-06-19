# Juego de piedra, papel o tijera en Ruby
puts 'Bienvenido al juego de Piedra, Papel o Tijera.'
#Ingresando valor elegido por el jugador
jugador = ARGV[0].to_i
# Validamos que los numeros ingresados esten dentro del rango del juego, sino indicamos que se ingresen nuevamente
if jugador <= 0 || jugador > 3
  puts 'Opcion invalida, elige n numero entre 1 y 3'
else
  puts 'Elige tu jugada: 1) Piedra, 2) Papel, 3) Tijera'
  jugador = ARGV[0].to_i

  # Validar que la jugada sea válida
  puts 'Jugada inválida. Elige 1 para Piedra, 2 para Papel o 3 para Tijera.' until [1, 2, 3].include?(jugador)
end
# Jugada de la computadora (número aleatorio entre 1 y 3)
pc = rand(1..3)

# Utilizando las condicionales, damos resultado del juego.
if jugador == pc
  puts "Empate. Ambos eligieron #{jugador}."
elsif (jugador == 1 && pc == 3) ||
      (jugador == 2 && pc == 1) ||
      (jugador == 3 && pc == 2)
  #Con #{} podemos colocar el valor del dato que se ingresa para poder compararlo 
  puts "¡Ganaste! Tú eligiste #{jugador} y la computadora eligió #{pc}."
else
  puts "Perdiste. Tú eligiste #{jugador} y la computadora eligió #{pc}."
end

puts 'Gracias por jugar.'
