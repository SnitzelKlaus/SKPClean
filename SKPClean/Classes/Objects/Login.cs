using System;
using System.Collections.Generic;
using System.Text;

namespace SKPClean
{
    public class Login
    {
        public Login(int id, string name, string password, int staffId)
        {
            Id = id;
            Name = name;
            Password = password;
            StaffId = staffId;
        }

        public int Id { get; set; }

        public string Name { get; set; }

        public string Password { get; set; }

        public int StaffId { get; set; }
    }
}
