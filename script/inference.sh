# Only Item to Modify
GPUs[0]=1
SEED=71
YOUR_DIALOG_DATASET_NAME=convai2
YOUR_DIALOG_MODEL_NAME=transformer_generator

# Return to main directory
cd ../

# Extract Keywords
bash extract_kw.sh $YOUR_DIALOG_DATASET_NAME $YOUR_DIALOG_MODEL_NAME

# Inference
bash ./script/inference_sh/Compute_GRADE_K2_N10_N10.sh $SEED ${GPUs[0]} $YOUR_DIALOG_DATASET_NAME $YOUR_DIALOG_MODEL_NAME