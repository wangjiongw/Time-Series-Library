export CUDA_VISIBLE_DEVICES=1

model_name=DLinear

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/TradeX \
  --data_path data_HC.csv \
  --features S \
  --target hpr_3 \
  --freq t \
  --seq_len 512 \
  --label_len 256 \
  --pred_len 512 \
  --model_id trade_HC \
  --model $model_name \
  --data TradeX \
  --enc_in 118 \
  --dec_in 3 \
  --c_out 3 \
  --d_model 512 \
  --e_layers 2 \
  --d_layers 1 \
  --moving_avg 25 \
  --factor 3 \
  --batch_size 16 \
  --moving_avg 25 \
  --des 'Exp' \
  --itr 1 \
  --learning_rate 0.001 \
  --loss 'SMAPE'
