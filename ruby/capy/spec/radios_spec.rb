describe 'Botões de Radio', :radio do
    
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/radios'
    end

    it 'seleção por ID' do
        # Escolhendo radio button pelo ID
        choose('cap')
    end

    it 'seleção pro find e css selector' do
        find('input[value=iron-man]').click
    end

    after(:each) do
        sleep 3
    end

end