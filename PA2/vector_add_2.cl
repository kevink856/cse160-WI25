__kernel void vectorAdd(__global const int *a, __global const int *b,
                        __global int *result, const unsigned int size) {
  //@@ Insert code to implement vector addition here
  int id = get_global_id(0);

  if(id >= size) {
    return;
  }

  result[id] = a[id] + b[id];
}
