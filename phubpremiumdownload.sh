#!/usr/bin/zsh
if [[ $# -eq 0  ]]; then
        echo "Usage:"
        echo "Open the chrome inspector on the network tab"
        echo "Start playing the video on max quality"
        echo "Skip to the end so that the last video fragment loads"
        echo "Find the latest xhr request on the inspector with format seg-XXX-... , check that it's the one with the highest XXX"
        echo "Get the URL of that request"
        echo ""
        echo "./phubpremiumdownload.sh URL [outputFile.mp4]"
        echo "if no outputFile is specified, it will output to stdout"
        exit 0
fi
tosubstitute="$(echo $1 | grep -o 'seg-[0-9]*')"
max="$(echo $1 | grep -o 'seg-[0-9]*' | cut -d'-' -f2)"
for (( i=1; i<=$max; i++  ))
do
    if [[ $# -eq 1  ]]; then
        wget -O - "${1/$tosubstitute/seg-$i}"
    else
       wget -O - "${1/$tosubstitute/seg-$i}" >> $2
    fi
done
