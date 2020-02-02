describe 'Select2', :select2 do
    describe('single', :single) do
        before(:each) do
            visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/single.html'
        end

        it 'Seleciona ator por nome' do
            find('.select2-selection--single').click
            find('.select2-results__option', text: 'Adam Sandler').click
        end

        it 'Busca e clica no ator' do
            find('.select2-selection--single').click
            find('.select2-search__field').set 'Chris Rock'

            find('.select2-results__option').click
        end
    end

    describe('multiple', :multi) do
        before(:each) do
            visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/multi.html'
        end

        def seleciona(ator)
            find('.select2-selection__rendered').click
            find('.select2-search__field').set ator
            find('.select2-results__option').click
        end

        it 'seleciona atores' do
            atores = ['Jim Carrey', 'Owen Wilson', 'Kevin James']

            atores.each do |ator|
                seleciona(ator)
            end

            #expect(find('.select2-selection__choice').all).to have_content atores
            res = page.has_css?('.select2-selection__choice', text: atores.sample)
            expect(res).to be true
        end

    end
end