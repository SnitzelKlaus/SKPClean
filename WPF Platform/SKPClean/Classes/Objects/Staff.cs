﻿using System;
using System.Collections.Generic;
using System.Text;

namespace SKPClean
{
    public class Staff
    {
        Staff(int id, string name)
        {
            Id = id;
            Name = name;
        }

        public int Id { get; set; }

        public string Name { get; set; }
    }
}
 