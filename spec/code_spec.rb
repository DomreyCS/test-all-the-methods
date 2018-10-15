require "simplecov"
SimpleCov.start
require "pry"
require_relative "../code"

RSpec.describe "perimeter" do
  it "returns 20 for a square with a width of 5" do
    expect(perimeter(5)).to eq(20)
  end

  it "returns 30 for a rectangle with a width of 5 and a length of 10" do
    expect(perimeter(5, 10)).to eq(30)
  end
end

RSpec.describe "average" do
  it "returns the average of an array of grades" do
    expect(average([5, 5])).to eq(5.0)
  end
end

RSpec.describe "rankings" do
  it "return a string containing a list of student ranks" do
    expect(rankings(["Dara", "Bara", "Gara"])).to eq("1. Dara\n2. Bara\n3. Gara\n")
    end
end

RSpec.describe "greet" do
  it "return spanish greeting" do
  expect(greet("Dara", "spanish")).to include("Hola")
  end

  it "return italian greeting" do
    expect(greet("Dara", "italian")).to include("Ciao")
    end

  it "return french greeting" do
    expect(greet("Dara", "french")).to include("Bonjour")
    end

  it "defaults to standard greeting if no language is specified" do
    expect(greet("Dara")).to eq("Hi Dara!")
  end
end

RSpec.describe "create_puzzle" do
  it "should append the characters that appear in both word and the guesses array" do
    expect(create_puzzle("Batman", ["m", "a", "n"])).to eq("_ a _ m a n")
  end
end

RSpec.describe "divisible_by_three" do
  it "returns 0 if the number provided is a multiple of 3" do
    expect(divisible_by_three(9)).to be true
  end
end

RSpec.describe "perfect_square?" do
  it "raises ArgumentError when invalid number is provided" do
    expect{ perfect_square?(0) }.to raise_error(ArgumentError, "number must be greater than or equal to one")
  end

  it "Confirm number is a perfect square" do
    expect(perfect_square?(4)).to be true
  end

  it "Confirm number is not a perfect square" do
    expect(perfect_square?(5)).not_to be true
  end
end