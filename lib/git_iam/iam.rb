MESSAGES = {
  remote_origin: 'remote.origin.url',
  user_name:     'user.name',
  user_email:    'user.email'
}

module GitIam
  class Iam

    def self.set_user(user)
      self.set_user_name(user)
      # self.set_user_email
      self.set_origin_account(user)
      who
    end

    def self.set_user_name(user_name)
      `git config --local user.name #{user_name}`
    end

    def self.set_user_email
      # TODO - implement setting user email
    end

    def self.set_origin_account(account)
      segments = remote_origin.split('/')
      segments[-2] = account

      origin_url = segments.join('/')

      `git remote set-url origin #{origin_url}`
    end

    def self.who
      [
        msg(:user_name, user_name),
        msg(:user_email, user_email),
        msg(:remote_origin, remote_origin)
      ]
    end

    def self.msg(key, value)
      { MESSAGES[key] => value }
    end

    def self.reset
      `git config --local --unset user.name`
      `git config --local --unset user.email`
      set_origin_account user_name
      who
    end

    def self.user_name
      local_or_remote 'user.name'
    end

    def self.user_email
      local_or_remote 'user.email'
    end

    def self.remote_origin
      local_or_remote 'remote.origin.url'
    end

    def self.local_or_remote(setting)
      value = `git config --local #{setting}`.chomp

      if value.empty?
        value = `git config --global #{setting}`.chomp # + ' (global)' # interferes when reseting origin
      end

      value
    end
  end
end
