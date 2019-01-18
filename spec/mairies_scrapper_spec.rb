require_relative '../lib/mairies_scrapper'



describe "the procedure to recover emails and city names" do
  describe "the function get_townhall_urls" do
    it "the type returned is an array" do
      expect(get_townhall_urls("avernes").class).to eq(Nokogiri::HTML::Document)
    end
    it "the returns something" do
      expect(get_townhall_urls("avernes")).not_to be_nil
    end
  end
  describe "the function get_townhall_email" do
    it "the type returned is a string" do
      expect(get_townhall_email("https://www.annuaire-des-mairies.com/95/avernes.html").class).to eq(String)
    end
    it "the returns something" do
      expect(get_townhall_email("https://www.annuaire-des-mairies.com/95/avernes.html")).not_to be_nil
    end
    it "the value returned from the city Avernes is " do
      expect(get_townhall_email("https://www.annuaire-des-mairies.com/95/avernes.html")).to eq("mairie.avernes@orange.fr")
    end
  end
end
