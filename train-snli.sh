export ROBERTA_BASE_PATH=/opt/app/roberta-base
export SNLI_DATA_PATH=/opt/app/snli_1.0
export SELF_EXPLAINING_MODEL_CHECKPOINTS=/opt/app/checkpoints
export SPAN_SAVE_PATH=/opt/app/span


python trainer.py \
--bert_path $ROBERTA_BASE_PATH \
--data_dir $SNLI_DATA_PATH \
--task snli \
--save_path $SELF_EXPLAINING_MODEL_CHECKPOINTS \
--gpus=0, \
--precision 16 \
--lr=2e-5 \
--batch_size=10 \
--lamb=1.0 \
--workers=4 \
--max_epoch=20
