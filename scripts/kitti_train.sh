export CUDA_VISIBLE_DEVICES=0,1

# cd ..
python -m torch.distributed.launch --nproc_per_node=2 --use_env --master_port=25692 train_distributed.py \
-c configs/pa_po_kitti_trainval.yaml \
-l /visionai-postech/eccv24/kitti_logs \
-w kitti_final \
-n kitti_full_cont_not_maskattn \
#-r \

#-n nusc_late_cont_head_attnfea \
#-x \
