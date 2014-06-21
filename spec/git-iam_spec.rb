require 'git-iam'

describe GitIam::Iam do
  it "should return a user name" do
    expect(GitIam::Iam.who.first['user.name']).to be_truthy
  end
end
