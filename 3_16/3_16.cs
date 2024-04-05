using System;
using System.Collections.Generic;

class Program
{
    static bool CheckDate(int num)
    {
        int[] daysInMonth = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
        int day = 0, month = 0;

        if (num >= 11 && num <= 99)
            return true;
        if (num >= 101 && num <= 999)
        {
            day = num / 10;
            month = num % 10;
            if (daysInMonth[month - 1] >= day)
                return true;
            day = num / 100;
            month = num % 100;
            if (daysInMonth[month - 1] >= day)
                return true;
        }
        if (num >= 1000 && num <= 9999)
        {
            day = num / 100;
            month = num % 100;
            if (daysInMonth[month - 1] >= day)
                return true;
        }

        return false;
    }

    static void Main(string[] args)
    {
        int count = int.Parse(Console.ReadLine());

        List<int> numbers = new List<int>();
        for (int i = 0; i < count; i++)
        {
            int n = int.Parse(Console.ReadLine());
            numbers.Add(n);
        }

        foreach (int n in numbers)
        {
            if (CheckDate(n))
                Console.WriteLine("Yes");
            else
                Console.WriteLine("No");
        }
    }
}