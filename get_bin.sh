hug_model_name = 'inisw08-T5-mlm-adafactor_test'
pip install transformers
git clone https://huggingface.co/ugiugi/$hug_model_name
python main.py --drive True, --model_name $hug_model_name
