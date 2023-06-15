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


cd ./transformers/examples/flax/language-modeling
rm -rf inisw08-RoBERT-mlm-adamw_torch_test
python run_t5_mlm_flax.py \
	--output_dir="inisw08-T5-mlm-adafactor_test" \
	--model_type="t5" \
	--do_train=True \
	--do_eval=True \
	--config_name="t5-base" \
	--tokenizer_name="t5-base" \
  --train_file="6_15_db_preproc.csv" \
  --validation_split_percentage="2" \
	--max_seq_length="512" \
	--per_device_train_batch_size="32" \
	--per_device_eval_batch_size="32" \
	--adafactor \
	--learning_rate="0.005" \
	--weight_decay="0.001" \
	--warmup_steps="2000" \
	--overwrite_output_dir \
	--logging_steps="500" \
	--save_steps="10000" \
	--eval_steps="2500" \
	--num_train_epochs=100.0 \
	--report_to all \
	--use_auth_token=True \
	--push_to_hub=True \
	--run_name='inisw08-T5-mlm-adafactor_test'
