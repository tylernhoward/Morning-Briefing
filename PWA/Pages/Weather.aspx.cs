using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Web.Script.Serialization;

namespace PWA.Pages
{
    public partial class Weather : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string appId = "1ec5b199f1f815683e6d04853db61361";
            string url = string.Format("http://api.openweathermap.org/data/2.5/forecast/daily?q={0}&units=imperial&cnt=1&APPID={1}", "Baltimore", appId);
            CallWeatherService(appId,url);
        }

        protected void GetWeatherInfo(object sender, EventArgs e)
        {
            string appId = "1ec5b199f1f815683e6d04853db61361";
            string url = string.Format("http://api.openweathermap.org/data/2.5/forecast/daily?q={0}&units=imperial&cnt=1&APPID={1}", txtCity.Text.Trim(), appId);
            CallWeatherService(appId,url);
        }
        private void CallWeatherService(string appId, string url){
            using (WebClient client = new WebClient())
            {
                string json = client.DownloadString(url);

                WeatherInfo weatherInfo = (new JavaScriptSerializer()).Deserialize<WeatherInfo>(json);
                lblCity_Country.Text = weatherInfo.city.name + "," + weatherInfo.city.country;
                imgCountryFlag.ImageUrl = string.Format("http://openweathermap.org/images/flags/{0}.png", weatherInfo.city.country.ToLower());
                lblDescription.Text = weatherInfo.list[0].weather[0].description;
                imgWeatherIcon.ImageUrl = string.Format("http://openweathermap.org/img/w/{0}.png", weatherInfo.list[0].weather[0].icon);
                lblTempMin.Text = string.Format("{0} F", Math.Round(weatherInfo.list[0].temp.min, 1));
                lblTempMax.Text = string.Format("{0} F", Math.Round(weatherInfo.list[0].temp.max, 1));
                lblTempDay.Text = string.Format("{0} F", Math.Round(weatherInfo.list[0].temp.day, 1));
                lblTempNight.Text = string.Format("{0} F", Math.Round(weatherInfo.list[0].temp.night, 1));
                tblWeather.Visible = true;

            }
        }
    }
    public class WeatherInfo
    {
        public City city { get; set; }
        public List<List> list { get; set; }
    }

    public class City
    {
        public string name { get; set; }
        public string country { get; set; }
    }

    public class Temp
    {
        public double day { get; set; }
        public double min { get; set; }
        public double max { get; set; }
        public double night { get; set; }
    }

    public class WeatherData
    {
        public string description { get; set; }
        public string icon { get; set; }
    }

    public class List
    {
        public Temp temp { get; set; }
        public int humidity { get; set; }
        public List<WeatherData> weather { get; set; }
    }
}