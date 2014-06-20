require 'thor'
require 'git_iam'

module GitIam
  class CLI < Thor

    desc "who", "Returns current user name and email from config."
    def who
      Helpers.pretty_print GitIam::Iam.who
    end

    desc "reset", "Reset the current local git settings to the global config."
    def reset
      Helpers.pretty_print GitIam::Iam.reset
    end

    # Not implemented
    # Will later be used for pairing
    # desc "aka [USERNAME]", "Sets current user name and remote account name."
    # def aka(user_name)
    #   Helpers.pretty_print GitIam::Iam.set_user_name(user_name)
    # end

    desc "[USERNAME]", "Sets current user name and remote origin account."
    def set_user(user, *args)
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
