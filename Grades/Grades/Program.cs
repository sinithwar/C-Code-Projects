using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Grades
{
    class Program
    {
        static void Main(string[] args)
        {
            Gradebook book = new Gradebook();
            book.AddGrade(91);
            book.AddGrade(89.1f);

            GradeStats stats = book.GradeStats();
            Console.WriteLine(stats.AvGrade);
            Console.WriteLine(stats.HighGrade);
            Console.WriteLine(stats.LowGrade);
        }
    }
}
