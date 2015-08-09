using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AgeDifferentiation
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("How old are you?");
            int age = Convert.ToInt32(Console.ReadLine());

            if (age < 18)
            {
                Console.WriteLine("That's too bad! You will have to wait a couple of years.");
            }
            else if (age == 18)
            {
                Console.WriteLine("Congrats, you can go get some lung cancer.");
            }
            else
            {
                Console.WriteLine("Welcome to being old.");
            }
            Console.ReadKey();
        }
    }
}
