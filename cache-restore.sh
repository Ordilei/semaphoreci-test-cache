#!/bin/sh
set -x

echo "build number: $SEMAPHORE_BUILD_NUMBER"
MY_CACHED_FILE=$SEMAPHORE_CACHE_DIR/my-cached-file
if [ -e $MY_CACHED_FILE ]; then
  echo "Restoring $MY_CACHED_FILE from cache..."
  cp -a $SEMAPHORE_CACHE_DIR/my-cached-file .
else
  echo "$MY_CACHED_FILE not found in cache."
fi
