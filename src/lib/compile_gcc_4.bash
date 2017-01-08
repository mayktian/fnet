TF_INC=$(python3 -c 'import tensorflow as tf; print(tf.sysconfig.get_include())')
for i in *.cc; do
  echo $i
  g++ -std=c++11 -shared $i -o ${i::-2}so -fPIC -I $TF_INC
done
