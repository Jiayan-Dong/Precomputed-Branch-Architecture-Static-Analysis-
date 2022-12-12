void insertion_sort()
{
    register int *i, *j;
    register int value, n;
    int arr[10] = {19, 36, 36, 84, 58, 89, 0, 72, 21, 26};
    n = 10;
    for (i = arr+1; i < arr+n; i++)
    {
    value = *i;
    j = i;
    while (value < *(j-1))
    {
      *j = *(j-1);
      if (--j == arr)
        break;
    }
    *j = value;
  }
}