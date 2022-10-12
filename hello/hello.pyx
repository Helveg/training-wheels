
from hello cimport hello as hello_c

def hello(name="World"):
    print(f"Hello {name} from Cython")
    hello_c()
