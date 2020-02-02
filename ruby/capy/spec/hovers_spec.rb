describe 'Mouse Hover', :hovers do
    
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/hovers'
    end

    it 'quando passo o mouse sobre o Blade' do
        blade = find('img[alt=Blade]')
        blade.hover

        expect(page.has_content? 'Nome: Blade').to be true

    end

    it 'quando passo o mouse sobre o Pantera Negra' do
        # valores com espaço devem estar entre ""
        pantera = find('img[alt="Pantera Negra"]')
        pantera.hover

        expect(page).to have_content 'Nome: Pantera Negra'
    end

    it 'quando passo o mouse sobre o Homem Aranha' do
        # css selector: 
        # ^= Inicia com, $= Termina com, *= Contém
        
        aranha = find('img[alt$=Aranha]')
        aranha.hover

        expect(page).to have_content 'Nome: Homem Aranha'
    end

end