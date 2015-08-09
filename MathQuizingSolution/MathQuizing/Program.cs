using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MathQuizing
{
    class Program
    {
        static void Main(string[] args)
        {
        Start:
            Random rnd = new Random();
            double firstNumber = rnd.Next(1,10);
            double secondNumber = rnd.Next(1,10);

        
            Console.WriteLine("What is " + firstNumber + " divided by " + secondNumber + "?");
            double result = firstNumber / secondNumber;
            double answer = Convert.ToDouble(Console.ReadLine());

            if (answer == result){
                Console.WriteLine("Congratulations, that's the right.");
            }else{
                Console.WriteLine("I'm sorry, that answer is wrong. Let's try this again.");
            }


        goto Start;
        }
    }
}
