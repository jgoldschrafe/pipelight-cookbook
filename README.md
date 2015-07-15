# pipelight-cookbook

This is a library cookbook for installing and configuring Pipelight, a utility
for running Windows plugins in NPAPI-enabled browsers via Wine.

## Supported Platforms

Ubuntu 14.04 and up.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['pipelight']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### pipelight::default

Include `pipelight` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[pipelight::default]"
  ]
}
```

## License and Authors

Author:: Jeff Goldschrafe (<jeff@rabb.it>)
