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
end
