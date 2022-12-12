void bubble_sort()
{
    int num, x, y, temp;
    int arr[10] = {19, 36, 36, 84, 58, 89, 0, 72, 21, 26};
    num = 10;
    while (x < num - 1)
    {
        y = 0;
        while (y < num - x - 1)
        {
            if (arr[y] > arr[y + 1])
            {
                temp = arr[y];
                arr[y] = arr[y + 1];
                arr[y + 1] = temp;
            }
            y++;
        }
        x++;
    }
}