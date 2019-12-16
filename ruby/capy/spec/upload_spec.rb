describe 'Upload', :upload do
  
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/upload'
        @arquivo = Dir.pwd + '/spec/fixtures/arquivo.txt'
        @imagem = Dir.pwd + '/spec/fixtures/bg-spider.png'
    end

    it 'upload com arquivo texto' do
        attach_file('file-upload', @arquivo)
        # Clicar no botão que possui o value='Upload'
        click_button 'Upload'

        # Find buscando o ID 
        div_arquivo = find('#uploaded-file')
        expect(div_arquivo.text).to include 'arquivo.txt'
    end

    it 'upload de imagem', :upload_imagem do
        attach_file('file-upload', @imagem)
        click_button 'Upload'

        img = find('#new-image')
        expect(img[:src]).to include('bg-spider.png')
    end

    after(:each) do
        sleep 3
    end

end