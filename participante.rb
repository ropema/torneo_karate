class Participante
	attr_accessor :codigo, :nombre, :edad, :dni, :cinturon, :partidas_ganadas, :partidas_empatadas, :partidas_perdidas, :puntaje
		def initialize(codigo,nombre,edad,dni,cinturon,partidas_ganadas,partidas_empatadas,partidas_perdidas) 
	    @codigo=codigo;
	    @nombre=nombre;
	    @edad=edad;
	    @dni=dni;
	    @cinturon=cinturon;
	    @partidas_ganadas=partidas_ganadas;
	    @partidas_empatadas=partidas_empatadas;
	    @partidas_perdidas=partidas_perdidas;
	    @puntaje=4*@partidas_ganadas+3*partidas_empatadas;
	end
end