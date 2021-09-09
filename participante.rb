class Participante
	attr_accessor :codigo, :nombre, :edad, :dni, :cinturon, :partidas_ganadas, :partidas_empatadas, :partidas_perdidas
		def initialize(codigo,nombre,edad,dni,cinturon,partidas_ganadas,partidas_empatadas,partidas_perdidas) 
	    @codigo=codigo;
	    @nombre=nombre;
	    @edad=edad;
	    @dni=dni;
	    @cinturon=cinturon;
	    @partidas_ganadas=partidas_ganadas;
	    @partidas_empatadas=partidas_empatadas;
	    @partidas_perdidas=partidas_perdidas;
	end
end