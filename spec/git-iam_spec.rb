require 'git-iam'

describe GitIam::Iam do

  describe '::who' do
    let(:who){ GitIam::Iam.who }

    # don't want to worry about testing specific user config value
    # just that they exist
    it 'should return a user name' do
      expect(who['user.name']).to be_truthy
    end

    it 'should return a user email' do
      expect(who['user.email']).to be_truthy
    end

    it 'should return a remote origin url' do
      expect(who['remote.origin.url']).to be_truthy
    end
  end

end
