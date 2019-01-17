require_relative '../lib/crypto_scrapper'

describe "the crypto_crapper function" do 
    it "test" do
        expect(crypto_scrapper([],Hash[name_crypto.zip(price_crypto.map)])).not_to be_nil
    end
end