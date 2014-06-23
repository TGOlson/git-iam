# git-iam

Command line tool for easily switching git authors, remotes, and other configs on shared computers.

## Installation

```
$ gem install git-iam
```

## Usage

Run via the command line using the command `git iam`.

Set user name and remote origin url

```
$ git iam [USERNAME]

user.name: [USERNAME]
user.email: <current-git-config-email>
remote.origin.url: https://github.com/[USERNAME]/<current-repo>.git
```

Set user email along with name and remote origin url. (same as command above, optionally accepting an email address)

```
$ git iam [USERNAME] [EMAIL]

user.name: [USERNAME]
user.email: [EMAIL]
remote.origin.url: https://github.com/[USERNAME]/<current-repo>.git
```

View current user name, email and remote origin url

```
$ git iam who
```

Reset to global git config values

```
$ git iam reset
```

### Looking for a pairing solution?

`git-iam` works great with [git-pair](https://github.com/chrisk/git-pair). Easily set up a pair profile with `git-pair`, and then change config values with `git-iam`.

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
$ git iam help [COMMAND]
```

## TODO

* Create pairing module - consider command `git iam also [username]`
* Add a remote-only setting option `git iam [USERNAME] --remoteonly [REMOTEACOUNT]`, or `git iam remote [REMOTEACOUNT]`
* Create helpers for changing options on remote urls `--branch`, `--remote`, etc. (might overlap with previous bullet)
* Consider integrating `git-pair` for pairing config.
* Implement a `--force` for `git iam [username]` incase the username conflicts with any reserved keywords.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
