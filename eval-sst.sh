export ROBERTA_BASE_PATH=/opt/app/roberta-base
export SST_DATA_PATH=/opt/app/datasets/sst
export SELF_EXPLAINING_MODEL_CHECKPOINTS=/opt/app/checkpoints
export SPAN_SAVE_PATH=/opt/app/span

python trainer.py \
--bert_path $ROBERTA_BASE_PATH \
--data_dir $SST_DATA_PATH \
--task sst5 \
--checkpoint_path $SELF_EXPLAINING_MODEL_CHECKPOINTS/last.ckpt \
--save_path $SPAN_SAVE_PATH \
--gpus=0, \
--mode eval
