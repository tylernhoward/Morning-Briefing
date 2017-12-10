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
    public partial class News : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetNewsInfo(sender,e);
        }
        protected void GetNewsInfo(object sender, EventArgs e)
        {
            string apiKey = "611f430c2b7647838e187b6d2f4df3c0";
            string source = "bbc-news";
            string url = string.Format("https://newsapi.org/v2/top-headlines?sources={0}&apiKey={1}", source, apiKey);
            using (WebClient client = new WebClient())
            {
                string json = client.DownloadString(url);
                NewsInfo newsInfo = (new JavaScriptSerializer()).Deserialize<NewsInfo>(json);
                newsList.DataSource = newsInfo.articles;
                newsList.DataBind();


            }
        }
    }
    public class NewsInfo
    {
        public List<Article> articles { get; set; }
    }

    public class Article
    {
        public Source source { get; set; }
        public string author { get; set; }
        public string title { get; set; }
        public string description { get; set; }
        public string url { get; set; }
        public string urlToImage { get; set; }
        public string publishedAt { get; set; }

    }

    public class Source
    {
        public string id { get; set; }
        public string name { get; set; }
    }
}