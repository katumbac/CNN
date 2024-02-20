# librerias

import tensorflow as tf
import numpy as np 

input = np.array([1,6,30,7,70,43,503,201,1005,99], dtype=float)

output = np.array([0.0254, 0.1524, 0.762, 0.1778, 1.778, 1.0922, 12.776, 5.1054, 25.527, 2.514], dtype=float)

#topografia red

capa1= tf.keras.layers.Dense(units= 1, input_shape = [1])

#creamos el modelo

#optimizador -> encargado de ajustar los pesos y los sesgos de manera eficiente

