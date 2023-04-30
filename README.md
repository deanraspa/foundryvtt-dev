# foundryvtt-dev-system

This respository is a starting point for developing a new system using
devcontainers in VS Code.  

## Initial Setup

1. Clone this repository and replace all instances of the text `foundryvtt-dev-system` with your system name
2. Rename the `src/module/foundryvtt-dev-system.ts` file to match your system name
3. Ensure the `src/system.json' field is updated with approrpiate values
4. Ensure the `package.json` file is updated with appropriate values  

## Installation

Please add your installation instructions here.

## Development

### Prerequisites

* Install [VS Code][3] and its [Dev Containers][4] plugin.
* Install a Dev Containers compatible container engine like Docker Desktop.
* Clone the repository locally and open it up in VS Code, accepting the popup
  to open the repo in a devcontainer.

### Building

You can build the project by running

```
npm run build
```

Alternatively, you can run

```
npm run build:watch
```

to watch for changes and automatically build as necessary.

### Installing Foundry in the dev container

Download the Foundry VTT zip file for whichever version you want to develop 
against and save it to the root directory of the repository as `foundryvtt.zip`

You can now install foundry to the pre-configured location by running

```
./scripts/foundry-start.sh
```

To start foundry run

```
./scripts/foundry-start.sh
```

To restart foundry just hit `CTRL` + `C` while in that terminal to stop the 
process and execute the start script again to restart Foundry.

### Linking the built project to Foundry VTT

In order to provide a fluent development experience, it is recommended to link
the built system to your local Foundry VTT installation's data folder. In
order to do so, first add a file called `foundryconfig.json` to the project root
with the following content:

```
{
  "dataPath": ["/absolute/path/to/your/FoundryVTT"]
}
```

(if you are using Windows, make sure to use `\` as a path separator instead of
`/`)

Then run

```
npm run link-project
```

### Running the tests

You can run the tests with the following command:

```
npm test
```

### Creating a release

The workflow works basically the same as the workflow of the [League Basic JS Module Template][1], please follow the
instructions given there.

## Licensing

This project is being developed under the terms of the
[LIMITED LICENSE AGREEMENT FOR MODULE DEVELOPMENT][2] for Foundry Virtual Tabletop.

Please add your licensing information here. Add your chosen license as
`LICENSE` file to the project root and mention it here.  If you don't know which
license to choose, take a look at [Choose an open source license][5].


<!-- Referenced Link Section -->
[1]: https://github.com/League-of-Foundry-Developers/FoundryVTT-Module-Template
[2]: https://foundryvtt.com/article/license/
[3]: https://code.visualstudio.com/download
[4]: https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers
[5]: https://choosealicense.com/
