export CUDA_VISIBLE_DEVICES=0,1

# cd ..
python -m torch.distributed.launch --nproc_per_node=2 --use_env --master_port=25695 train_distributed.py \
-c configs/pa_po_nuscenes_trainval.yaml \
-l /visionai-postech/eccv24/nusc_logs2 \
-w nusc_final \
-n nusc_full_cont_not_maskattn \
#-x \
#-r \
#-re 13 \

#-x \
#-n nusc_late_cont_head_attnfea \
#-x \
