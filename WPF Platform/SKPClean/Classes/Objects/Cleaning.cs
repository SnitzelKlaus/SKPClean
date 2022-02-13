using System;
using System.Collections.Generic;
using System.Text;

namespace SKPClean
{
    public class Cleaning
    {
        public Cleaning(int id, DateTime date, int intensity, int staffId, int itemId)
        {
            Id = id;
            Date = date;
            Intensity = intensity;
            StaffId = staffId;
            ItemId = itemId;
        }

        public int Id { get; set; }

        public DateTime Date { get; set; }

        public int Intensity { get; set; }

        public int StaffId { get; set; }

        public int ItemId { get; set; }
    }
}
