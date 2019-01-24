#!/bin/bash

if [ "$3" = "applicable" ] ; then
    echo "true"
else
    cd $1
    outputline=$(grep 'XXX' * -R -n --exclude=test.sh)
    file=$(echo $outputline | sed 's/:.*//')
    line=$(echo $outputline | sed 's/.*:\([0-9]*\):.*/\1/')
    printf "
    {
      \"tag\": \"ToolSuccess\",
      \"contents\": [
        [
          {
            \"tnType\": \"XXX\",
            \"tnDesc\": \"Hot damn, you have an XXX mark in the code sonny!\",
            \"tnFile\": \"$file\",
            \"tnLine\": $line,
            \"tnColumn\": null,
            \"tnPatch\": null,
            \"tnCodeLine\": null,
            \"tnProcedure\": null,
            \"tnPhase\": \"PhaseUnknown\",
            \"tnTool\": { \"tag\" :  \"CustomTool\", \"contents\" : \"test.sh\" }
          }
        ],
        null
      ]
    }"
fi
