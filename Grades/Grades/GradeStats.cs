using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Grades
{
    class GradeStats
    {
        public GradeStats()
        {
            HighGrade = 0;
            LowGrade = float.MaxValue;
        }
        public float AvGrade;
        public float HighGrade;
        public float LowGrade;

    }
}
