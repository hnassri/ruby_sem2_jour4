require_relative '../lib/crypto_scrapper'


describe "the crypto_crapper function" do
  it "the type returned is an array" do
    expect(crypto_scrapper.class).to eq(Array)
  end
  it "the returns something" do
    expect(crypto_scrapper).not_to be_nil
  end
end