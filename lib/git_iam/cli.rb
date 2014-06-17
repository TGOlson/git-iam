require 'thor'
require 'git_iam'

module GitIam
  class CLI < Thor

    desc "who", "Returns current user name and email from config."
    def who
      Helpers.pretty_print GitIam::Iam.who
    end

    desc "aka [USERNAME]", "Sets current user name and remote account name."
    def aka(user_name)
      Helpers.pretty_print GitIam::Iam.set_user_name(user_name)
    end

    # desc "using", "Returns current remote settings."
    # def using
    #   puts GitIam::Iam.using
    # end

    # desc "onaccount", "Sets remote origin account name."
    # def onaccount(account)
    #   puts GitIam::Iam.set_origin_account(account)
    # end

    # desc "on", "Sets settings with flags."
    # method_option :repo, :aliases => "-r"
    # method_option :branch, :aliases => "-b"
    # def on
    #   puts GitIam::Iam.set(options)
    # end

    # desc "onrepo REPO", "Sets current repo name."
    # def onrepo(repo)
    #   puts GitIam::Iam.set('repo' => repo)
    # end

    desc "[USERNAME]", "Sets current user name and remote origin account."
    def set_user(user)
      Helpers.pretty_print GitIam::Iam.set_user(user)
    end

    # allows user to be set without special flags
    def method_missing(method, *args)
      # might be useful for taking in more information with default iam
      # such as email
      # args = [method.to_s] + args

      set_user method.to_s
    end

  end

  class Helpers
    def self.pretty_print(statement)
      if statement.is_a?(Array)
        return statement.each{ |s| pretty_print s }
      end

      statement.each do |key, value|
        print key.ljust(20)
        print value + "\n"
      end
    end
  end
end
