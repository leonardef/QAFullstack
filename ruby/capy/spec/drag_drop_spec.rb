describe 'Drag an Drop', :drop do
    
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/drag_and_drop'
    end

    it 'Homem Aranha pertence ao time Stark' do
        
        stark = find('.team-stark .column')
        cap = find('.team-cap .column')

        spider = find('img[alt="Homem Aranha"]')
        spider.drag_to stark

        expect(stark).to have_css 'img[alt="Homem Aranha"]'
        expect(cap).not_to have_css 'img[alt="Homem Aranha"]'

    end

end