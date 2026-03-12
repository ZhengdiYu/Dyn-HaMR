#!/usr/bin/env bash


# Download for HaMeR
gdown https://drive.google.com/uc?id=1mv7CUAnm73oKsEEG1xE3xH2C_oqcFSzT
# Alternatively, you can use wget
#wget https://www.cs.utexas.edu/~pavlakos/hamer/data/hamer_demo_data.tar.gz
tar --warning=no-unknown-keyword --exclude=".*" -xvf hamer_demo_data.tar.gz
rm -rf hamer_demo_data.tar.gz

# Download for SLAM
gdown https://drive.google.com/uc?id=1VD1vGhl_NPzy8mza4Fx6vvqFpnlzZ86L
mv droid.pth ./_DATA/

# Download for HMP
gdown https://drive.google.com/uc?id=1_rp_SMxZA6Gjm6Z49M6hXam9kjMD6-GQ
unzip hmp_model.zip
mv hmp_model ./_DATA/
rm -rf hmp_model.zip

wget https://huggingface.co/spaces/rolpotamias/WiLoR/resolve/main/pretrained_models/detector.pt -P ./third-party/hamer/pretrained_models/
