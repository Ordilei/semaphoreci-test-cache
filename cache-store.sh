#!/bin/sh
set -x

echo "build number: $SEMAPHORE_BUILD_NUMBER"
echo "my cached content" > $SEMAPHORE_CACHE_DIR/my-cached-file
