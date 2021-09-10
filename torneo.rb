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
torneo=Torneo.new;
torneo.cargar_equipo('E01','amarillo');
torneo.cargar_equipo('E02','naranja');
torneo.cargar_equipo('E03','rojo');
torneo.cargar_equipo('E04','verde');
torneo.cargar_equipo('E05','azul');
torneo.cargar_equipo('E06','cafe');
torneo.equipos[0].cargar_participante('001','Juan Cisternas','25','25650-7','azul',3,2,2);
torneo.equipos[0].cargar_participante('002','Carlos Rojas','22','22532-4','naranja',1,4,2);
torneo.equipos[0].cargar_participante('003','Pedro Cabello','35','35788-8','cafe',6,1,0);
torneo.equipos[1].cargar_participante('004','Roberto Perez','30','30650-3','verde',3,1,3);
torneo.equipos[1].cargar_participante('005','Carlos Rojas','22','22532-4','amarillo',1,3,3);
torneo.equipos[1].cargar_participante('006','Pedro Cabello','35','35788-8','cafe',6,0,1);
torneo.equipos[2].cargar_participante('007','Rafael Rojas','40','40650-4','negro',5,2,0);
torneo.equipos[3].cargar_participante('008','Juan Figueroa','53','53532-8','negro',3,4,0);
torneo.equipos[4].cargar_participante('009','Hector Gatica','45','45788-9','cafe',5,2,0);
torneo.equipos[5].cargar_participante('010','Luis Peña','42','42650-6','cafe',3,2,2);
puts "#{torneo.equipos[0].participantes[0].puntaje}";
puts "#{torneo.equipos[0].puntaje_total}";
puts "#{torneo.buscar_por_dni('53532-8')}";
torneo.listar_equipos();







