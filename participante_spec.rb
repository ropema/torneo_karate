require_relative 'participante'

RSpec.describe "Participante" do
    context '1 Initialize class Participante' do
        before(:each) do
            @participante = Participante.new('001','Juan Cisternas','25','17650788-6','cafe',3,2,2)
        end
        it '1.1 Instance class Participante' do
            expect(@participante).to be_an_instance_of(Participante)
        end
        it '1.2 Variable Instance codigo' do
            expect(@participante.codigo).to eq('001')
        end
        it '1.3 Variable Instance nombre' do
            expect(@participante.nombre).to eq('Juan Cisternas')
        end
        it '1.4 Variable Instance edad' do
            expect(@participante.edad).to eq('25')
        end
        it '1.5 Variable Instance dni' do
            expect(@participante.dni).to eq('17650788-6')
        end
        it '1.6 Variable Instance partidas_ganadas' do
            expect(@participante.partidas_ganadas).to eq(3)
        end
        it '1.7 Variable Instance partidas_empatadas' do
            expect(@participante.partidas_empatadas).to eq(2)
        end
        it '1.8 Variable Instance partidas_perdidas' do
            expect(@participante.partidas_perdidas).to eq(2)
        end
    end
end