using System;
namespace PWA.App_Code
{
    public class User
    {
        public String firstName { get; set; }
        public String lastName { get; set; }
        public Address address { get; set; }
        public User()
        {
            address = new Address();   
        }
    }
}
