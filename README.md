# QLColorCode Themer

This is small daemon to automatically change [QLColorCode] color style based on
macOS appearance. In other words it allows you to define you separate color
style for Dark Mode.

[QLColorCode]: https://github.com/anthonygelibert/QLColorCode

<img src="https://i.imgur.com/zCWN6PR.png" alt="light" width="683" />
<img src="https://i.imgur.com/6mgcsqu.png" alt="dark" width="680" />

## Installation

Clone this repo and run:

```bash
./install.sh
```

This will download an executable of this program and install it as an Launch
Agent on your mac. 

## Usage

After you install and run this daemon, you can now set theme for light and dark
respectively:

```bash
defaults write org.n8gray.QLColorCode hlLightTheme base16/one-light
defaults write org.n8gray.QLColorCode hlDarkTheme base16/eighties
```
Now, try to change Appearance in the System Settings.

## Links

- [Available themes](https://gitlab.com/saalen/highlight/-/tree/master/themes)

Special Kudos goes to [DarkModeListener]

[DarkModeListener]: https://github.com/LinusU/DarkModeListener
