require_relative 'participante'
class Equipo
    attr_accessor :codigo, :nombre, :puntaje_total, :participantes
    def initialize(codigo,nombre)
    	@codigo=codigo;
        @nombre=nombre;
        @participantes=Array.new;
        @puntaje_total=puntaje_total;
    end

end