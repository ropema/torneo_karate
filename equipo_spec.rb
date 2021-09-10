require_relative 'participante'
require_relative 'equipo'
RSpec.describe "Equipo" do
    context '1 Initialize class Equipo' do
        before(:each) do
           @equipo=Equipo.new('E01','rojo')
        end
        it '1.1 Instance class Equipo' do        
            expect(@equipo).to be_an_instance_of(Equipo)
        end
        it '1.2 Variable Instance codigo' do
            expect(@equipo.codigo).to eq('E01')
        end
        it '1.3 Variable Instance nombre' do
            expect(@equipo.nombre).to eq('rojo')
        end
    end
    context '2 Load of participantes' do
        it 'Load one participante' do
            equipo=Equipo.new('E01','rojo')
            participante=Participante.new('001','Juan Cisternas','25','17650788-6','cafe',3,2,2)
            equipo.cargar_participante('001','Juan Cisternas','25','17650788-6','cafe',3,2,2)
            expect(equipo.participantes[0].codigo).to eq('001')
        end
        it 'Change Variable Instance puntaje_total' do
            equipo=Equipo.new('E01','rojo')
            participante=Participante.new('001','Juan Cisternas','25','17650788-6','cafe',3,2,2)
            equipo.cargar_participante('001','Juan Cisternas','25','17650788-6','cafe',3,2,2)            
            expect(equipo.puntaje_total).to eq(18)
        end
    end
end
