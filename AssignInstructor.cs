using System;

namespace Constructors_ABC_Intstructor
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string[] skl = new string[] { "C", "C++", "Java","C#" };
           Instructor instructor = new Instructor("Ron", 3.5f, 2, skl);
            if (instructor.ValidatEligibility())
            {
                if (instructor.checkskill("C#"))
                {
                    Console.WriteLine("instructor is eligible");
                    Console.WriteLine("instructor have that skill");
                }
                else
                {
                    Console.WriteLine("Instructor does not have that  skill ");
                }
            }
            else
            {
                Console.WriteLine("Instructor is not eligible");
                if (instructor.checkskill("C#"))
                {
                    
                    Console.WriteLine("Instructor have that skill");
                }
                else
                {
                    Console.WriteLine("Instructor does not have the skill ");
                }
               
            }
        }
    }
    class Instructor
    {
        private float avgFeedback;
        private int experience;
        private string instructorName;
        private string[] instructorSkill;

        public Instructor(string instructorName, float avgFeedback, int experience, string[] instructorSkill)
        {
            this.instructorName = instructorName;
            this.avgFeedback = avgFeedback;
            this.experience = experience;
            this.instructorSkill = instructorSkill;
        }

        public bool ValidatEligibility()
        {
            if (experience > 3 && avgFeedback == 4.5)
            {
                return true;
            }
            else if (experience <= 3 && avgFeedback >= 4)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public bool checkskill(string skill)
        {
            foreach (string newskill in instructorSkill)
            {
                if (newskill.Equals(skill))
                {
                    return true;
                }
            }
            return false;
        }
    }
}
