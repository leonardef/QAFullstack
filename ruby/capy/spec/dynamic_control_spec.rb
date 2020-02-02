describe 'Dynamic Control', :dc do
   
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/dynamic_controls'
    end

    it 'quando habilita o campo' do
        #campo desabilitado para preenchimento = disabled true
        res = page.has_field? 'movie', disabled: true

        click_button 'Habilita'

        #campo habilitado para preenchimento = disabled false
        res = page.has_field? 'movie', disabled: false
    end

end