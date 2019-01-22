#!/bin/bash

if [ "$1" = "applicable" ] ; then
    echo "true"
else
    printf '                          \
    {                                 \
      "tag": "ToolSuccess",           \
      "contents": [                   \
        [                             \
          {                           \
            "tnType": "Type",         \
            "tnDesc": "Description",  \
            "tnFile": "File",         \
            "tnLine": 42,             \
            "tnColumn": null,         \
            "tnPatch": null,          \
            "tnCodeLine": null,       \
            "tnProcedure": null,      \
            "tnPhase": "PhaseUnknown",\
            "tnTool": "Infer"         \
          }                           \
        ],                            \
        null                          \
      ]                               \
    }'
fi
