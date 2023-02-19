using System;
using System.Collections.Generic;
using System.Text;

namespace Assignment
{
    using System;

    class Person
    {

        public int Id { get; set; }
        public string Name { get; set; }

        public string Address { get; set; }
        public double Phone { get; set; }


        public Person(int id, string name, string address, double phone)
        {
            Id = id;
            Name = name;
            Address = address;
            Phone = phone;
        }

        public virtual void DisplayPersonInfo()
        {
            Console.WriteLine("Id: " + Id);
            Console.WriteLine("Name: " + Name);

            Console.WriteLine("Address: " + Address);
            Console.WriteLine("phone: " + Phone);
        }
    }

    class Student : Person
    {
        public string CLASS { get; set; }
        public int Marks { get; set; }
        public string Grade { get; set; }
        public double Fee { get; set; }


        public Student(int id, string name, string address, double phone, string CLASs, int marks, string grade, double fee) : base(id, name, address, phone)
        {
            CLASS = CLASs;
            Marks = marks;
            Grade = grade;
            Fee = fee;
        }

        public override void DisplayPersonInfo()
        {
            base.DisplayPersonInfo();
            Console.WriteLine("Class: " + CLASS);
            Console.WriteLine("Marks: " + Marks);
            Console.WriteLine("Grade: " + Grade);
            Console.WriteLine("Fee: " + Fee);
        }
    }

    class Staff : Person
    {
        public int StaffId { get; set; }
        public string Designation { get; set; }
        public double Salary { get; set; }
        public string Qualification { get; set; }


        public Staff(int staffid, string name, string address, double phone, string designation, double salary, string qualification) : base(staffid, name, address, phone)
        {
            StaffId = staffid;
            Designation = designation;
            Salary = salary;
            Qualification = qualification;


        }

        public override void DisplayPersonInfo()
        {
            base.DisplayPersonInfo();
            Console.WriteLine("Staff ID: " + StaffId);
            Console.WriteLine("Designation: " + Designation);
            Console.WriteLine("Salary: " + Salary);
            Console.WriteLine("Qualification:" + Qualification);

        }
    }

    class TeachingStaff : Staff
    {
        public string Subject { get; set; }

        public TeachingStaff(int staffid, string name, string address, double phone, string designation, double salary, string qualification, string subject) : base(staffid, name, address, phone, designation, salary, qualification)
        {
            Subject = subject;
        }

        public override void DisplayPersonInfo()
        {
            base.DisplayPersonInfo();
            Console.WriteLine("Subject: " + Subject);
        }
    }

    class NonTeachingStaff : Staff
    {

        public string DeptName { get; set; }
        public int ManagerId { get; set; }

        public NonTeachingStaff(int staffid, string name, string address, double phone, string designation, double salary, string qualification, string deptname, int managerid) : base(staffid, name, address, phone, designation, salary, qualification)
        {
            DeptName = deptname;
            ManagerId = managerid;

        }

        public override void DisplayPersonInfo()
        {
            base.DisplayPersonInfo();
            Console.WriteLine("DeptName: " + DeptName);
            Console.WriteLine("ManagerId:" + ManagerId);
        }
    }

}