module GitIam
  class Iam
    def self.who
      {
        'user.name' => user_name,
        'user.email' => user_email,
        'remote.origin.url' => remote_origin
      }
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

    def self.set_user_config(args)
      user_name = args.shift
      user_email = args.shift
      self.set_user_name user_name
      self.set_user_email user_email unless user_email.nil?
      self.set_origin_account user_name
    end

    def self.set_user_name(user_name)
      `git config --local user.name #{user_name}`
    end

    def self.set_user_email(user_email)
      `git config --local user.email #{user_email}`
    end

    def self.set_origin_account(account)
      segments = remote_origin.split('/')
      segments[-2] = account

      origin_url = segments.join('/')

      `git remote set-url origin #{origin_url}`
    end

    def self.reset
      `git config --local --unset user.name`
      `git config --local --unset user.email`
      set_origin_account user_name
    end

  end
end
