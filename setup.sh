#!/bin/bash
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    find . -type f -name '*.yaml' -exec sed -i 's/{dockerHubUsername}/'$1'/g' {} +
elif [[ "$OSTYPE" == "darwin"* ]]; then
    find . -type f -name '*.yaml' -exec sed -i '' 's/{dockerHubUsername}/'$1'/g' {} +
fi
