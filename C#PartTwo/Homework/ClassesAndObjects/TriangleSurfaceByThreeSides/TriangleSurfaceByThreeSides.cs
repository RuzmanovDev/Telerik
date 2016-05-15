﻿namespace TriangleSurfaceByThreeSides
{
    using System;
    using System.Globalization;
    using System.Threading;

    class TriangleSurfaceByThreeSides
    {
        static void Main(string[] args)
        {
            Thread.CurrentThread.CurrentCulture = CultureInfo.InvariantCulture;
            double a = double.Parse(Console.ReadLine());
            double b = double.Parse(Console.ReadLine());
            double c = double.Parse(Console.ReadLine());

            double p = (a + b + c) / 2;
            double area = Math.Sqrt(p * (p - a) * (p - b) * (p - c));
            Console.WriteLine("{0:F2}", area);
        }
    }
}
