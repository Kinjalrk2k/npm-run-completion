# npm-run-completion

Add npm run scripts to your shell

npm run <kbd>Tab</kbd>

![example](./images/example.gif)

## Installation

> IMPORTANT!
> Please install `jq` before using this script (if not already present in your system)
> https://stedolan.github.io/jq/

### Through the command line

```sh
curl https://raw.githubusercontent.com/Kinjalrk2k/npm-run-completion/main/npm-run-completion.sh --output ~/npm-run-completion.sh && chmod +x ~/npm-run-completion.sh && echo "\n\nsource ~/npm-run-completion.sh" >> ~/.zshrc
```

> Update `.zshrc` to `.bashrc` if you're using bash shell

### Manually

- Download the `npm-run-completion.sh` file
- In your `.zshrc` file add:
- `source path/to/sh/file`

## Notes

- Tested on MacOS using `zsh` shell only
- Overrides the original `npm completion`
- _`scrapper`_ directory contains code to scrape the command list from the npm Docs website. However the scrapper script only prints out the commands on the terminal. You need to manually copy and paste it in the `npm-run-completion.sh` file
