#!/bin/bash

usage() {
    cat <<EOM
    Usage:
    benchmark.sh URL #-Requests #-Concurrency
EOM
    exit 0
}

[ -z $1 ] && { usage; }

# Define the URL of your local site
URL=$1  # Replace with your local site URL

# Define the number of requests and concurrency level
REQUESTS=$2 # Total number of requests to send
CONCURRENCY=$3 # Number of requests to make at a time

# Run Apache Benchmark
echo "Testing requests to $URL"
ab -n $REQUESTS -c $CONCURRENCY $URL
