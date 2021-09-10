require_relative 'participante'
require_relative 'equipo'
class Torneo
	attr_accessor :equipos
	def initialize()
		@equipos=Array.new;
	end
end






