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

Set current user name and remote account

```
$ iam [user_name]
```

Check current user name and email

```
$ iam who
```

Change user name (good for pairing)

```
$ iam aka [alias_name]
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
