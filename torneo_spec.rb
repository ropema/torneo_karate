require_relative 'participante'
require_relative 'equipo'
require_relative 'torneo'
RSpec.describe "Torneo" do
    context '1 Initialize class Torneo' do
        before(:each) do
           @torneo=Torneo.new()
        end
        it '1.1 Instance class Equipo' do        
            expect(@torneo).to be_an_instance_of(Torneo)
        end
    end
    context '2 Load of equipos' do
	    it 'Load one equipo' do
	        torneo=Torneo.new()
	        torneo.cargar_equipo('E01','amarillo')
	        expect(torneo.equipos[0].nombre).to eq('amarillo')
	    end
	end
    context '3 Search by dni' do
	    it 'Search participante by dni' do
	        torneo=Torneo.new()
	        torneo.cargar_equipo('E01','amarillo')
	        torneo.equipos[0].cargar_participante('001','Juan Cisternas','25','25650-7','azul',3,2,2)
	        torneo.equipos[0].cargar_participante('002','Carlos Rojas','22','22532-4','naranja',1,4,2)
	        expect(torneo.buscar_por_dni('22532-4')).to eq('002')
	    end
	end
end
