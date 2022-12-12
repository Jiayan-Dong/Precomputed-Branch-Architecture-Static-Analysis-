void mfor(){
    int a[4] = {1,2,3,4};
    int sum = 0;
    int j = 4;
    for (int i = 0; i < j; i++)
    {
        sum += a[i];
        a[i]++;
    }
}