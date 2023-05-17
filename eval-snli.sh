export ROBERTA_BASE_PATH=/opt/app/roberta-base
export SST_PATA_PATH=/opt/app/datasets/sst
export SNLI_DATA_PATH=/opt/app/datasets/snli
export SELF_EXPLAINING_MODEL_CHECKPOINTS=/opt/app/checkpoints
export SPAN_SAVE_PATH=/opt/app/span

python trainer.py \
--bert_path $ROBERTA_BASE_PATH \
--data_dir $SNLI_DATA_PATH \
--task snli \
--checkpoint_path $SELF_EXPLAINING_MODEL_CHECKPOINTS/last.ckpt \
--save_path $SPAN_SAVE_PATH \
--gpus=0, \
--mode eval
