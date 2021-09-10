require_relative 'participante'
class Equipo
    attr_accessor :codigo, :nombre, :puntaje_total, :participantes
    def initialize(codigo,nombre)
        @codigo=codigo;
        @nombre=nombre;
        @participantes=Array.new;
        @puntaje_total=0;
    end
    def cargar_participante(codigo,nombre,edad,dni,cinturon,partidas_ganadas,partidas_empatadas,partidas_perdidas)
        participante=Participante.new(codigo,nombre,edad,dni,cinturon,partidas_ganadas,partidas_empatadas,partidas_perdidas);
        @participantes.push(participante);
        @puntaje_total=@puntaje_total+participante.puntaje;
    end
end
