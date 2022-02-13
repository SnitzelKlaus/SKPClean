using System;
using System.Collections.Generic;
using System.Text;

namespace SKPClean
{
    public class Item
    {
        public Item(int id, string name, int cleaningInterval, int room)
        {
            Id = id;
            Name = name;
            CleaningInterval = cleaningInterval;
            Room = room;
        }

        public int Id { get; set; }

        public string Name { get; set; }

        public int CleaningInterval { get; set; }

        public int Room { get; set; }
    }
}
