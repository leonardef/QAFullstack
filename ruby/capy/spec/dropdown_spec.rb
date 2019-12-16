describe 'Caixa de Opções', :dropdown do
    
    it 'item especifico simpels' do
        #select('Opção', from: 'elemento')

        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        
        # Select busca elementos do tipo select que contenham um ID 
        avenger = select('Steve Rogers', from: 'dropdown')
        
        expect(avenger).to have_content 'Steve Rogers'
        
    end

    it 'item especifico com o find' do
        
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'

        # find('') retorna apenas um elemento
        drop = find('.avenger-list')

        drop.find('option', text: 'Loki').select_option

    end

    it 'qualquer item', :sample do
        
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'

        drop = find('.avenger-list')

        # método all, retorna um array de elementos | sample sorteia um elemento dentro do array
        drop.all('option').sample.select_option

    end

end