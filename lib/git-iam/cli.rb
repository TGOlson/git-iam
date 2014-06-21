require 'thor'
require 'git-iam'

module GitIam
  class CLI < Thor

    desc "who", "Returns current user name and email from config."
    def who
      puts GitIam::Iam.who
    end

    desc "reset", "Reset the current local git settings to the global config."
    def reset
      GitIam::Iam.reset
      puts GitIam::Iam.who
    end

    desc "[USERNAME] [EMAIL]", "Set git user name and remote origin account. Optionally set git email address, if desired."
    def set_user_config(args)
      GitIam::Iam.set_user_config args
      puts GitIam::Iam.who
    end

    desc "user [USERNAME]", "Set git user name."
    def user(name)
      GitIam::Iam.set_user_name name
      puts GitIam::Iam.who
    end

    desc "email [EMAIL]", "Set git email address."
    def email(email)
      GitIam::Iam.set_user_email email
      puts GitIam::Iam.who
    end

    # allows user to be set without special flags
    def method_missing(method, *args)
      args.unshift(method.to_s)
      set_user_config args
    end
  end
end
