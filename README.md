# git_iam

Command line tool for easily switching git authors, remotes, and other configs on shared computers.

**Currently in development**

References

* [Great ruby gem cli guide](https://github.com/radar/guides/blob/master/gem-development.md)
* [Nice ruby executable resource](http://robdodson.me/blog/2012/06/14/how-to-write-a-command-line-ruby-gem/)
* Major props to [git pair](https://github.com/chrisk/git-pair)
* Inspiration from [pivotal git scripts](https://github.com/pivotal/git_scripts)

## Installation

```
$ gem install git_iam
```

## Usage

Run via the command line using the command `iam`.

Set current user name and remote origin url

```
$ iam [user_name]
```

Check current user name, email and remote origin url

```
$ iam who
```

Reset to global git config values

```
$ iam reset
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

## TODO

* Create pairing module - consider command `iam also [username]
* Add options to `iam [username]` commands, such as `--nameonly` or `--remoteonly`.
* Create helpers for changing options on remote urls `--branch`, `--remote`, etc.
* Create helper for viewing current configs.
* Consider integrating `git-pair` for pairing config.
* Implement a `--force` for `iam [username]` incase the username conflicts with any reserved keywords.

## Contributing

1. Fork it ( git shttp://github.com/<my-github-username>/git_iam/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
