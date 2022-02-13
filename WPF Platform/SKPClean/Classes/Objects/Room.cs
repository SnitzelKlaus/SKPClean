using System;
using System.Collections.Generic;
using System.Text;

namespace SKPClean
{
    public class Room
    {
        public Room(int id, string name, int departmentId)
        {
            Id = id;
            Name = name;
            DepartmentId = departmentId;
         }

        public int Id { get; set; }

        public string Name { get; set; }

        public int DepartmentId { get; set; }
    }
}
