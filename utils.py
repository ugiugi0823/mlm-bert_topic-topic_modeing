import os
def setup(args):
  if args.drive:
    os.makedirs('/content/drive/MyDrive/inisw08', exist_ok=True)
    os.makedirs(f'/content/drive/MyDrive/inisw08/{args.model_name}', exist_ok=True)
  else:
    os.makedirs('./inisw08', exist_ok=True)
    os.makedirs(f'./inisw08/{args.model_name}', exist_ok=True)

  
