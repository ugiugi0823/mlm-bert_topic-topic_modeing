import os
def setup(args):
  if args.drive:
    print('drive 에 모델 파일 저장됩니다.')
    os.makedirs('/content/drive/MyDrive/inisw08', exist_ok=True)
    os.makedirs(f'/content/drive/MyDrive/inisw08/{args.model_name}', exist_ok=True)
  else:
    print('로컬 에 모델 파일 저장됩니다.')
    os.makedirs('./inisw08', exist_ok=True)
    os.makedirs(f'./inisw08/{args.model_name}', exist_ok=True)

  
