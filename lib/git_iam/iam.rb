MESSAGES = {
  remote_origin: 'remote origin url',
  user_name:     'name',
  user_email:     'email',
}

module GitIam
  class Iam

    def self.set_user(user)
      [
        self.set_user_name(user),
        self.set_origin_account(user)
      ]
    end

    def self.set_user_name(user_name)
      `git config --global user.name #{user_name}`
      msg(:user_name, user_name)
    end

    def self.set_origin_account(account)
      original_url = `git remote -v`.split[1]

      segments = original_url.split('/')
      segments[-2] = account

      origin_url = segments.join('/')

      `git remote set-url origin #{origin_url}`
      msg(:remote_origin, origin_url)
    end

    def self.using
      `git remote -v`
    end

    def self.who
      user_name = `git config --global user.name`.chomp
      user_email = `git config --global user.email`.chomp

      [
        msg(:user_name, user_name),
        msg(:user_email, user_email)
      ]
    end

    def self.msg(key, value)
      { MESSAGES[key] => value }
    end
  end
end
