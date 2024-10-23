SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`

# Navigate to the parent directory
cd $SCRIPTPATH/..

# Define the Hugging Face URL for the dataset
DATASET_URL="https://huggingface.co/datasets/ShapeNet/ShapeNetCore/resolve/main/02828884.zip"  # Example for 'bench'

# Download the dataset
wget $DATASET_URL --no-check-certificate -O "shapenetcore_partanno_segmentation_benchmark_v0.zip"

# Unzip the downloaded file
unzip shapenetcore_partanno_segmentation_benchmark_v0.zip -d ./shapenet_data

# Remove the zip file after unzipping
rm shapenetcore_partanno_segmentation_benchmark_v0.zip

# Return to the previous directory
cd -
