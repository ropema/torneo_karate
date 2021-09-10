require_relative 'participante'
require_relative 'equipo'
class Torneo
	attr_accessor :equipos
	def initialize()
		@equipos=Array.new;
	end
	def cargar_equipo(codigo,nombre)
		equipo=Equipo.new(codigo,nombre);
		@equipos.push(equipo);
	end
	def buscar_por_dni(dni)
		resultado_busqueda="Participante no encontrado";
		for equipo in @equipos
			for participante in equipo.participantes
				if(participante.dni==dni)
					resultado_busqueda="#{participante.codigo}";
				end
			end
		end
		return resultado_busqueda;
	end
	def listar_equipos()
		for equipo in @equipos
			puts "#{equipo.codigo} #{equipo.nombre} #{equipo.puntaje_total}";
		end
	end
end







