describe "Upload de Arquivo", :upload do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/upload"
    $file_upload = File.join(Dir.pwd, "/spec/arquivos/text.txt")
    $file_upload = cover_file.tr("/", "\\") if OS.windows?
    @file_upload = File.join(Dir.pwd, "/spec/arquivos/image.jpg")
    @file_upload = cover_file.tr("/", "\\") if OS.windows?
  end

  after(:each) do
    sleep 3
  end

  it "Subindo um arquivo" do
    attach_file("file-upload", @arquivo)
    # find("input[value=Upload]").click
    click_button "Upload"
    textv = find("#uploaded-file")
    expect(textv.text).to eql "text.txt"
    expect(find("#uploaded-file").visible?).to be true
  end
  it "Subindo uma imagem", :upload_image do
    attach_file("file-upload", @imagem)
    # find("input[value=Upload]").click
    click_button "Upload"
    img = find("#new-image")
    expect(img[:src]).to include "image.jpg"
    textv = find("#uploaded-file")
    expect(textv.text).to eql "image.jpg"
    expect(find("#uploaded-image").visible?).to be true
  end
end
