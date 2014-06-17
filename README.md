# git_iam

Command line tool for easily switching git authors, remotes, and other configs on shared computers.

*Currently in development

* using this guide: https://github.com/radar/guides/blob/master/gem-development.md
* with a little help from here too: http://robdodson.me/blog/2012/06/13/writing-a-command-line-tool-in-ruby/
* major props to [git pair](https://github.com/chrisk/git-pair)

## Installation

```
$ gem install git_iam
```

## Usage

Run via the command line using the command `iam`.

Find out who you are (current git config)

```
$ iam who
```

Set current user

```
$ iam [username]
```

Set current repo

```
$ iam onrepo [repo_name]
```

## Available commands

Find all available commands

```
$ iam
```

Find details about a command

```
$ iam help [command]
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/git_iam/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
