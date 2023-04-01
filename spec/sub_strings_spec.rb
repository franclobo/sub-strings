require_relative '../sub_string'

describe "#substrings" do
  before(:all) do
    @dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  end

  it "returns a hash" do
    expect(substrings("below", @dictionary)).to be_a(Hash)
  end

  it "returns a hash with the correct keys" do
    expect(substrings("below", @dictionary).keys).to eq(["below","low"])
  end

  it "returns a hash with the correct values" do
    expect(substrings("below", @dictionary).values).to eq([1,1])
  end

  it "returns a hash with the correct keys and values" do
    expect(substrings("Howdy partner, sit down! How's it going?", @dictionary)).to eq({"down"=>1, "how"=>2, "howdy"=>1, "go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1})
  end
end
