#!/bin/bash
OUT_DIR=$1
RCV_DIR=$2
for filename in mldoc-indices/*; do
        n="${filename##*/}"
        lang=$(echo $n | awk -F'.' '{print $1}')
        echo $lang
        mkdir -p /vc_data/users/ramitra/data/MLDoc/$lang/
        if [[ "$lang" == *"english"* ]]; then
                python generate_documents.py --indices-file $filename --output-filename $OUT_DIR/$lang/$n --rcv-dir $RCV_DIR/rcv1/        
        else
                python generate_documents.py --indices-file $filename --output-filename $OUT_DIR/$lang/$n --rcv-dir $RCV_DIR/RCV2_Multilingual_Corpus/$lang/
        fi

done
