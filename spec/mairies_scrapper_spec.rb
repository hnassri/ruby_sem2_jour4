require_relative '../lib/mairies_scrapper'

# Methode 1
describe "the email scrapper" do
    it "the type returned is an array" do
        expect(hash_final.class).to eq(Array)
    end
    # it "the returns something" do
    #     expect(get_townhall_urls("avernes")).not_to be_nil
    #   end
    # it "the returns something" do
    #     expect(get_townhall_email(townhall_url)).not_to be_nil
    # end
  end




  # Methode 2
#   describe "the procedure to recover emails and city names" do
#     describe "the function array_name_town" do
#       it "the type returned is an array" do
#         expect(array_name_town.class).to eq(Array)
#       end
#       it "the returns something" do
#         expect(array_name_town(avernes)).not_to be_nil
#       end
#     end
    
#     describe "the function get_townhall_email" do
#       it "the type returned is a string" do
#         expect(get_townhall_email("https://www.annuaire-des-mairies.com/95/avernes.html").class).to eq(String)
#       end
#       it "the returns something" do
#         expect(get_townhall_email("https://www.annuaire-des-mairies.com/95/avernes.html")).not_to be_nil
#       end
#       it "the value returned from the city Avernes is " do
#         expect(get_townhall_email("https://www.annuaire-des-mairies.com/95/avernes.html")).to eq("mairie.avernes@orange.fr")
#       end
#     end
#   end