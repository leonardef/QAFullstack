
describe 'Caixa de Seleção', :checkbox do
    
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/checkboxes'
    end

    it 'marcando uma opção' do
        # marca um elemento pelo ID
        # onde o elemento seja do tipo 'checkbox' ou possua um 'name'
        check('thor')
    end

    it 'desmarcando uma opção' do
        uncheck('antman')
    end

    it 'marcando com find set true' do
        
        # procura elemento do tipo input[value=cap]
        # .set(true) marca o checkbox
        
        find('input[value=cap]').set(true)
    end

    it 'desmarcando com find set false' do
        # .set(false) desmarca o checkbox
        find('input[value=guardians]').set(false)
    end

    after(:each) do
        sleep 3
    end

end