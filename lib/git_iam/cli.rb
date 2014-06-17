require 'thor'
require 'git_iam'

module GitIam
  class CLI < Thor

    desc "who", "Returns current user name and email from config."
    def who
      puts GitIam::Iam.who
    end

    desc "on", "Sets settings with flags."
    method_option :repo, :aliases => "-r"
    method_option :branch, :aliases => "-b"
    def on
      puts GitIam::Iam.set(options)
    end

    desc "onrepo REPO", "Sets current repo name."
    def onrepo(repo)
      puts GitIam::Iam.set('repo' => repo)
    end
  end
end
