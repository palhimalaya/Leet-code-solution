int[] arr = new int[10] {3, 5, 2, 7, 7, 4, 1, 5, 7, 2};
        bool[] visitedNumber = new bool[arr.Length];
        bool isUniq;

        for (int i = 0; i < arr.Length; i++)
        {
            if (!visitedNumber[i])
            {
                isUniq = true;

                for (int j = i + 1; j < arr.Length; j++)
                {
                    if (arr[i] == arr[j])
                    {
                        isUniq = false;
                        visitedNumber[j] = true;
                    }
                }

                if (isUniq)
                {
                    Console.WriteLine("{0} ", arr[i]);
                }
            }
        }