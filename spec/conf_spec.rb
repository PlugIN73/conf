require "spec_helper"

describe "it should be work" do
  before do
    @config = Conf.build :test do
      env :production do
        port 666
        server :env do
          mail 123
          host ""
        end
      end

      env :test, :parent => :production do
        port 777
      end
   end
  end

  it "should be instance of conf" do
    @config.should be_an_instance_of Conf::Configus
  end

  it "should be work key value" do
    @config.port.should == 777
  end

  it "should be work key value with hierarchy" do
    @config.server.mail.should == 123
  end

  it "should be work when value empty" do
    @config.server.host.should be_empty
  end

  it "should be " do
    @config.server.host.should be_empty
  end

end