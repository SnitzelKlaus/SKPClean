using System;
using System.Collections.Generic;
using System.Text;

namespace SKPClean
{
    public class Message
    {
        public Message(int id, DateTime date, string content, int staffId)
        {
            Id = id;
            Date = date;
            Content = content;
            StaffId = staffId;
        }

        public int Id { get; set; }

        public DateTime Date { get; set; }

        public string Content { get; set; }

        public int StaffId { get; set; }
    }
}
