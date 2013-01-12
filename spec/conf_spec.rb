require "spec_helper"

describe "it should be work" do
  before do
    @config = Conf.build :env do

    end

  end

  it "should be instance of conf" do
    @config.should be_an_instance_of Conf::Configus
  end

  it "should be work key value" do

  end

end