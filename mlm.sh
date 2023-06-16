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
gdown '1_0wExwA1F4c6QzOJX5BhDvJXhMIXFNN3&confirm=t'

huggingface-cli login --token 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
wandb login --relogin '2be184e31a96c722bfebdfe35f726042eb8e526c'


cd ./transformers/examples/pytorch/language-modeling
rm -rf inisw08-RoBERT-mlm-adamw_torch_test
python run_mlm.py \
    --output_dir ./inisw08-RoBERT-mlm-adamw_torch_bs16 \
    --model_name_or_path roberta-base \
    --train_file="6_15_db_preproc.csv" \
    --per_device_train_batch_size 16 \
    --per_device_eval_batch_size 16 \
    --validation_split_percentage="2" \
    --do_train \
    --num_train_epochs 3 \
    --do_eval \
    --line_by_line \
    --push_to_hub=True \
    --logging_steps 500 \
    --save_steps 10000 \
    --optim='adamw_torch' \
    --report_to all \
    --hub_strategy 'every_save' \
    --run_name='inisw08-RoBERT-mlm_0615_조현욱_adamw_torch_bs16'
