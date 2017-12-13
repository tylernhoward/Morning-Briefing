using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PWA.App_Code
{
    public class List
    {
        public Temp temp { get; set; }
        public int humidity { get; set; }
        public List<WeatherData> weather { get; set; }
    }
}