﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Hello
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Please enter your name");
            string name = Console.ReadLine();

            Console.WriteLine("How much sleep did you have last night?");
            int hoursOfSleep = int.Parse(Console.ReadLine());

            Console.WriteLine("Hello, " + name + "!");

            if (hoursOfSleep < 8){
                Console.WriteLine("You must feel tired.");
            }else{
                Console.WriteLine("You must be well rested.");
            }
        }
    }
}
