from cscipy.distance import euclidean

import pyximport

pyximport.install()
import numpy as np

A = np.random.randn(100, 200)

D1 = np.sqrt(np.square(A[np.newaxis, :, :] - A[:, np.newaxis, :]).sum(2))
D2 = euclidean(A)

print(np.allclose(D1, D2))
# True
