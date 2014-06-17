require 'git_iam'

describe GitIam::Iam do
  it "should return a user name" do
    expect(GitIam::Iam.who).to eq 'tgolson'
  end
end
