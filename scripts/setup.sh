#!/bin/bash

if [ ! -d ".foundryvtt" ] && [ -f "foundryvtt.zip" ]; then
    unzip foundryvtt.zip -d .foundryvtt
    mkdir .foundrydata
fi

CONFIG_DIR=".foundrydata/Config"
LICENSE_FILE="${CONFIG_DIR}/license.json"

license_min_length=24

if [ ! -f "${LICENSE_FILE}" ]; then
  echo "Installation not yet licensed."

  mkdir -p "${CONFIG_DIR}"

  if [ ${#FOUNDRY_LICENSE_KEY} -ge ${license_min_length} ]; then
    echo "Applying license key passed via FOUNDRY_LICENSE_KEY."
    # FOUNDRY_LICENSE_KEY is long enough to be a key
    echo "{ \"license\": \"${FOUNDRY_LICENSE_KEY}\" }" | tr -d '-' > "${LICENSE_FILE}"
  else
    echo "Unable to apply a license key since a license key environment variable was not set.  The license key will need to be entered in the browser."
  fi
fi
