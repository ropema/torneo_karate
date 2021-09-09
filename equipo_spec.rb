require_relative 'participante'
require_relative 'equipo'
RSpec.describe "Equipo" do
    context '2 Initialize class Equipo' do
        before(:each) do
           @equipo=Equipo.new('E01','rojo')
        end
        it '2.1 Instance class Equipo' do        
            expect(@equipo).to be_an_instance_of(Equipo)
        end
        it '2.2 Variable Instance codigo' do
            expect(@equipo.codigo).to eq('E01')
        end
        it '2.3 Variable Instance nombre' do
            expect(@equipo.nombre).to eq('rojo')
        end                
    end
end