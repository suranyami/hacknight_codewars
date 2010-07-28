require 'prime'

describe "10,001st prime" do
  it "first should be 2" do
    Prime.find(1).should == 2
  end
  
  it "second should be 3" do
    Prime.find(2).should == 3
  end
  
  it "does something" do
    (2 * 2 == 4).should be true
  end
  
  it "should be 6 digits and end in 43" do
    prime_10001 = Prime.find(10001).to_s
    prime_10001.size.should == 6
    prime_10001.should =~ /43$/
  end
end