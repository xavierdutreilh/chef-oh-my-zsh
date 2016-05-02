# chef-oh-my-zsh Cookbook

> Installs [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

## Attributes

### oh_my_zsh::default

```ruby
[:oh_my_zsh][:users] = [
  {
    username: 'xavierdutreilh',
    groupname: 'xavierdutreilh',
  },
]
```

## Usage

### oh_my_zsh::default

Just include `oh_my_zsh` in your node's `run_list`:

```json
{
  "name": "my_node",
  "run_list": [
    "recipe[oh_my_zsh]"
  ]
}
```

## License

`chef-oh-my-zsh` is released under the [MIT license](http://en.wikipedia.org/wiki/MIT_License).
