require "administrate/field/multiple_select"

describe Administrate::Field::MultipleSelect do
  describe "#to_partial_path" do
    it "returns a partial based on the page being rendered" do
      page = :show
      collection = double
      field = Administrate::Field::MultipleSelect.new(:collection, collection, page)

      path = field.to_partial_path

      expect(path).to eq("/fields/multiple_select/#{page}")
    end
  end
end
