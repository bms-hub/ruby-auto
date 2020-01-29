describe "Select2", :select do
  after(:each) do
    sleep 2
  end
  describe("single", :single) do
    before(:each) do
      visit "https://training-wheels-protocol.herokuapp.com/apps/select2/single.html"
      find('span[dir="ltr"]').click
    end

    it "Select an actor name" do
      find(".select2-results__option", text: "Adam Sandler").click
      expect(find('span[title="Adam Sandler"]').text).to eql "Adam Sandler"
    end

    it "Search and Select an actor name" do
      find('input[class="select2-search__field"]').set "Chris Rock"
      sleep 1
      find(".select2-results__option", text: "Chris Rock").click
      expect(find('span[title="Chris Rock"]').text).to eql "Chris Rock"
    end
  end

  describe("multiple", :multiple) do
    before(:each) do
      visit "https://training-wheels-protocol.herokuapp.com/apps/select2/multi.html"
    end

    def selection(actor)
      find(".select2-selection--multiple").click
      find(".select2-search__field").set actor
      find(".select2-results__options").click
    end

    it "Select multiple actors" do
      actors = ["Jim Carrey", "Kevin James", "Owen Wilson"]
      actors.each do |a|
        selection(a)
        sleep 3
      end
    end
  end
end
