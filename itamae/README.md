```sh
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf install
bundle
bundle exec itamae ssh --host $SSH_CONFIG_HOST role.rb
```

`SSH_CONFIG_HOST` is **THIS** in `~/.ssh/config`

```
host THIS
  hostname 123.234.345.456
  user ubuntu
  port 99999
```
