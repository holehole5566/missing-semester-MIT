#!/usr/bin/env bash
find . -type f -name "*.html" | xargs -d '\n'  tar -cvzf html.zip