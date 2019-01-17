

describe "the email scrapper" do
    it "the type returned is an array" do
      expect(get_townhall_email.class).to eq(Array)
    end
    it "the returns something" do
        expect(get_townhall_urls).not_to be_nil
      end
    it "the returns something" do
    expect(get_townhall_email(townhall_url)).not_to be_nil
    end
  end


