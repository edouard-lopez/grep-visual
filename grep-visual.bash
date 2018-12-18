#!/usr/bin/env bash

function grep-visual() {
    pattern="$1"
    file="$2"
    awk -v pattern="$pattern" '
        BEGIN {
            count = 0
        }
        $0 ~ pattern {
            matches[count]=NR
            count++
        }
        END{
            results[0]=0
            for (i in matches) {
                location=sprintf("%.0f", matches[i]/NR*100)
                results[location]++
            }
            for (i=0; i<100; i++) {
                printf (results[i] > 0) ? "█" : "░"
            }
        printf "\n"
        }
    ' $file
}

grep-visual "$@"
