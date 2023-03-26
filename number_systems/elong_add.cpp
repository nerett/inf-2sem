Decimal add(Decimal first, Decimal second)
{
    Decimal result;
    char num = 0;

    if (first.n < second.n) {
        Decimal buffer = first;
        first = second;
        second = buffer;
    }
    result.n = first.n;

    unsigned int i = 0;
    for (i = 0; i <= second.n; i++) {
        result.a[i] = (first.a[i] + second.a[i] + num) % 10;
        num = (char) ((first.a[i] + second.a[i] + num) / 10);
    }
    for (; i <= first.n; i++) {
        result.a[i] = (first.a[i] + num) % 10;
        num = (int) ((first.a[i] + num) / 10);
    }

    if (num != 0) {
        result.n += 1;
        result.a[i] = num;
    }

    return result;
}
