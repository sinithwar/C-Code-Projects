using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Grades
{
    class Gradebook
    {

        public Gradebook()
        {
            grades = new List<float>();
        }
        public void AddGrade(float grade)
        {
            grades.Add(grade);
        }

        public GradeStats GradeStats()
        {
            GradeStats stats = new GradeStats();
            float sum = 0f;

            foreach(float grade in grades)
            {
                stats.HighGrade = Math.Max(grade, stats.HighGrade);
                stats.LowGrade = Math.Min(grade, stats.LowGrade);
                sum = sum + grade;
            }
            stats.AvGrade = sum / grades.Count;
            return stats;
        }


        List<float> grades;
    }
}
