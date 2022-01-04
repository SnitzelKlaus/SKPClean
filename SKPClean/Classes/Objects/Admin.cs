using System;
using System.Collections.Generic;
using System.Text;

namespace SKPClean
{
    public class Admin
    {
        public Admin(int id, int staffId)
        {
            Id = id;
            StaffId = staffId;
        }

        public int Id { get; set; }
        public int StaffId { get; set; }
    }
}
