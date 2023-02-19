using Assignment;
using System;
using System.Collections.Generic;
using System.Text;

namespace InheritanceAssignment
{
    internal class NewProgram

    {

        static void Main(string[] args)
        {
            Student s = new Student(101, "usha", "Tadepalligudem", 9079133606, "B.tech 4th year", 93, "A", 60000);
            Console.WriteLine("Student Information:");
            s.DisplayPersonInfo();
            Console.WriteLine();

            TeachingStaff t = new TeachingStaff(201, "deepak", "Bhimavaram", 9379856934, "professor", 50000, "M.tech", "Mathematics");
            Console.WriteLine("Teaching Staff Information:");
            t.DisplayPersonInfo();
            Console.WriteLine();

            NonTeachingStaff nt = new NonTeachingStaff(102, "Rama;a", "Tanuku", 9987865432, "lab technician", 50000, "b.tech", "computer science and engineering", 4558);
            Console.WriteLine("Non teaching staff Information:");
            nt.DisplayPersonInfo();
            Console.WriteLine();
        }
    }
}
