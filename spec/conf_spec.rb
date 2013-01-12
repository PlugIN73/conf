require "spec_helper"

describe "it should be work" do
  before do
    @config = Conf.build :production do
      env :production do
        port 666
        mail 123
      end
      env :test do
        port 666
        mail 123
      end
   end
  end

  it "should be instance of conf" do
    @config.should be_an_instance_of Conf::Configus
  end

  it "should be work key value" do
    @config.port.should == 666
  end

end