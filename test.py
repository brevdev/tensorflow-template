import tensorflow as tf
hello = tf.constant('Hello, TensorFlow!')
tf.print(hello)
print("Num GPUs Available: ", len(tf.config.list_physical_devices('GPU')))