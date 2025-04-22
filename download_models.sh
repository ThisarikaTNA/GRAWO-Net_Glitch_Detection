#!/bin/bash

echo " Downloading pre-trained models from Google Drive..."

gdown --id h1ovhusbEZAH_xnul0NbDFfgWq7c3acurt -O models/real_only_model.h5

gdown --id 1vPnmK8HZP1qdhPhYJrp8fZI9ZQ0E-P99 -O models/final_generator_ema_ep250.pth

echo " Models downloaded to models/ directory."
