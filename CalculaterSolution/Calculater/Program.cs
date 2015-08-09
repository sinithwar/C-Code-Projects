using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Calculater
{
    class Program
    {
        static void Main(string[] args)
        {
            int firstNumber;
            int secondNumber;
            string sentence = "This is your result after multiplication.:\n";
            
            Console.Write("Please enter your first number:\n");
            firstNumber = Convert.ToInt32 (Console.ReadLine());
            Console.Write("Please enter you second numnber:\n");
            secondNumber = Convert.ToInt32(Console.ReadLine());
            Console.Write(sentence + (firstNumber*secondNumber) + "\n");
            Console.Write("However, this " + firstNumber + " divided by " + secondNumber + " is " + (firstNumber/secondNumber) +"\n");
        }
    }
}
