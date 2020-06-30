import numpy as np
import parallel
import time

def main():
    a = np.zeros((100000000,), dtype=np.int32)
    start = time.time()
    parallel.parallel_assign_values(a, 3)
    print("[*] Assign values took {} secs".format(time.time() - start))
    start = time.time()
    parallel.parallel_assign_values(a, 1)
    print("[*] Assign values took {} secs".format(time.time() - start))
    print(a)

if __name__ == "__main__":
    main()
