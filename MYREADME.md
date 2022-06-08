


# PREPROCESS THE DATA
python3 preprocess.py --data_root dataset2/test --preprocessed_root voxceleb_preprocessed_5/ --batch_size 8


# Train expert discriminator
python color_syncnet_train.py --data_root voxceleb_preprocessed_5/ --checkpoint_dir <folder_to_save_checkpoints>


# Train the model
python wav2lip_train.py --data_root voxceleb_preprocessed_5/ --checkpoint_dir checkpoints --syncnet_checkpoint_path expert/lipsync_expert.pth

'''
Not version XXX in requirements.txt
pip install opencv-python==4.5.2.52
'''

To stop the script
ctrl \


```
python wav2lip_train_Takahiro.py --data_root voxceleb_preprocessed_5/ --checkpoint_dir checkpoints3 --syncnet_checkpoint_path expert/lipsync_expert.pth
```

