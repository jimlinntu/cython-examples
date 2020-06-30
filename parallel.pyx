import numpy as np
cimport numpy as np
from cython.parallel import prange

def parallel_assign_values(np.ndarray[np.int32_t, ndim=1] a, int num_threads):
    cdef int i
    cdef int n
    # https://cython.readthedocs.io/en/latest/src/userguide/memoryviews.html
    cdef int [:] a_view = a
    n = a.shape[0]

    # https://cython.readthedocs.io/en/latest/src/userguide/parallelism.html
    for i in prange(n, nogil=True, num_threads=num_threads):
        a_view[i] = i
    return
