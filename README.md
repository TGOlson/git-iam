# git-iam

Command line tool for easily switching git authors, remotes, and other configs on shared computers.

**Currently in development**

References

* [Great ruby gem cli guide](https://github.com/radar/guides/blob/master/gem-development.md)
* [Nice ruby executable resource](http://robdodson.me/blog/2012/06/14/how-to-write-a-command-line-ruby-gem/)
* Major props to [git pair](https://github.com/chrisk/git-pair)
* Inspiration from [pivotal git scripts](https://github.com/pivotal/git_scripts)

## Installation

```
$ gem install git-iam
```

## Usage

Run via the command line using the command `git iam`.

Set user name and remote origin url

```
$ git iam [USERNAME]
```

Set user email along with name and remote origin url. (same as command above, optionally accepting an email address)

```
$ git iam [USERNAME] [EMAIL]
```

View current user name, email and remote origin url

```
$ git iam who
```

Reset to global git config values

```
$ git iam reset
```

## Available commands

* `git iam [USERNAME]` Set user name and remote origin url.
* `git iam [USERNAME] [EMAIL]` Set user email along with name and remote origin url.
* `git iam who` View current user name, email and remote origin url.
* `git iam reset` Reset to global git config values.
* `git iam user [USERNAME]` Set user name.
* `git iam email [EMAIL]` Set user email.

Find all available commands

```
$ git iam
```

Find details about a command

```
$ git iam help [command]
```

## TODO

* Create pairing module - consider command `git iam also [username]`
* Add options to `git iam [username]` commands, such as `--nameonly` or `--remoteonly`.
* Create helpers for changing options on remote urls `--branch`, `--remote`, etc.
* Create helper for viewing current configs.
* Consider integrating `git-pair` for pairing config.
* Implement a `--force` for `git iam [username]` incase the username conflicts with any reserved keywords.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
