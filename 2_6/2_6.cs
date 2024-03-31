using System;

class Program
{
    static int CountNum(int[] nums, int length)
    {
        int result = 0;
        for (int i = 0; i < length; i++)
        {
            int num = nums[i];
            if (num >= 100)
            {
                int count = 0;
                int tempNum = num;
                while (tempNum != 0)
                {
                    tempNum /= 10;
                    count++;
                }
                if (count % 2 != 0)
                {
                    result++;
                }
            }
        }
        return result;
    }

    static void Main(string[] args)
    {
        const int maxSize = 100;
        int[] nums = new int[maxSize];
        int length = 0;

        Console.WriteLine("Enter numbers using enter: (to end enter -1):"); // как и в python, не вводит через пробел 
        while (true)
        {
            int num = Convert.ToInt32(Console.ReadLine()); // принимает строку, и конвертирует в int 
            if (num == -1 || length == maxSize)
                break;
            nums[length++] = num;
        }

        Console.WriteLine(CountNum(nums, length));
    }
}
