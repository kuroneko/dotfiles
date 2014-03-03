if [ -z "${PEBBLE_DEV_HOME}" ]; then
  PEBBLE_DEV_HOME=~/projects/pebble-dev
fi
if [ -z "${PEBBLE_SDK_VER}" ]; then
  PEBBLE_SDK_VER=PebbleSDK-2.0.0
fi
if [ -d "${PEBBLE_DEV_HOME}/${PEBBLE_SDK_VER}" ]; then
  alias pebblehome='cd ${PEBBLE_DEV_HOME}'
  export PEBBLE_DEV_HOME
  PATH="${PEBBLE_DEV_HOME}/${PEBBLE_SDK_VER}/bin":${PATH}
  export PATH
fi
