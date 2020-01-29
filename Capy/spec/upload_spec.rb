describe "Upload de Arquivo", :upload do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/upload"
    # $arquivo = Dir.pwd + "/spec/arquivos/Arquivo.txt" works on chrome
    @arquivo = 'C:\qafullstack\Ruby\Capy\spec\arquivos\Arquivo.txt' ##To firefox works, it needs the path to be with \ instead of /
    # $imagem = Dir.pwd + "/spec/arquivos/imagem.jfif"
    @imagem = 'C:\qafullstack\Ruby\Capy\spec\arquivos\imagem.jfif'
  end

  after(:each) do
    sleep 3
  end

  it "Subindo um arquivo" do
    attach_file("file-upload", @arquivo)
    find("input[value=Upload]").click
  end
end
