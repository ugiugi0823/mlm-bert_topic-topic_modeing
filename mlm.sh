pip install wandb
pip install transformers
pip install datasets
pip install evaluate
# bnb 오류 해결!!!!
pip install bitsandbytes
git clone https://github.com/huggingface/transformers.git
pip install -q ./transformers
cd ./transformers/examples/pytorch/language-modeling
pip install -q -r requirements.txt
# 데이터 다운로드
gdown "14eNbudzbqbnPnmReWiJwZziYXUk01RJ4&confirm=t"

huggingface-cli login --token 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
wandb login --relogin '2be184e31a96c722bfebdfe35f726042eb8e526c'


cd ./transformers/examples/pytorch/language-modeling
rm -rf inisw08-RoBERT-mlm-lion_32bit_test
python run_mlm.py \
    --output_dir ./inisw08-RoBERT-mlm-lion_32bit_test \
    --model_name_or_path distilbert-base-uncased \
    --train_file="mlm_dataset_drop.csv" \
    --per_device_train_batch_size 8 \
    --per_device_eval_batch_size 8 \
    --validation_split_percentage="2" \
    --do_train \
    --do_eval \
    --line_by_line \
    --push_to_hub=True \
    --optim='lion_32bit' \
    --report_to all \
    --hub_strategy 'every_save' \
    --run_name='inisw08-RoBERT-mlm_조현욱_lion_32bit_test'
