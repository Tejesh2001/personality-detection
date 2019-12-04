
export CUDA_HOME=/usr/local/cuda
export LD_LIBRARY_PATH=${CUDA_HOME}/lib64
PATH=${CUDA_HOME}/bin:${PATH}

export PATH

mkdir t0w2v_keras
python3 conv_net_train_keras.py -static -word2vec 0
mv cvt* t0w2v_keras
mv perf_output_* t0w2v_keras

mkdir t1w2v_keras
python3 conv_net_train_keras.py -static -word2vec 1
mv cvt* t1w2v_keras
mv perf_output_* t1w2v_keras

mkdir t2w2v_keras
python3 conv_net_train_keras.py -static -word2vec 2
mv cvt* t2w2v_keras
mv perf_output_* t2w2v_keras

mkdir t3w2v_keras
python3 conv_net_train_keras.py -static -word2vec 3
mv cvt* t3w2v_keras
mv perf_output_* t3w2v_keras


mkdir t4w2v_keras
python3 conv_net_train_gpu.py -static -word2vec 4
mv cvt* t4w2v_keras
mv perf_output_* t4w2v_keras
