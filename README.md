# INITIAL TESTING IN PROGRESS NOT YET READY FOR CONSUMPTION

# Foundry VTT DevContainer template

A devcontainer setup for foundryvtt module development.  This project was created
to minimize time and effort needed to stand up a dev environment for a foundry 
module / system.

This project is a starting point that can be forked to leverage its scripts to 
stand up a local foundryvtt dev environment quickly and to facilitate collaboration
on 

## Foundry setup steps

Before you can start developing a foundry module, you need to bootstrap the dev
continer with a foundry installation

1. Download the latest version of foundry to the repository root directory and
   ensure it is named foundryvtt.zip
2. Execute `./scripts/setup.sh` in the terminal to extract and configure a local
   foundry instance for development
   >**Optional:** <br/>Add a `FOUNDRY_LICENSE_KEY` environment variable to prevent
   >prompting of the license on first load.
3. Execute `./scripts/foundry-start.sh` to stand up the development foundry
   instance and confirm that you can access the application.
4. At this point you are ready to create you module/system
   * A script that utilizes foundry-factory has been included at 
     `scripts/foundry-factory.sh` to instantiate the module/system

