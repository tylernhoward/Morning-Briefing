using System;
using System.Drawing;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZedGraph;
using ZedGraph.Web;

namespace PWA.Pages
{
    public partial class Tasks : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ZedGraphWeb1_RenderGraph(ZedGraphWeb webObject, Graphics g, MasterPane pane)
        {
            //GraphPane class came from the ZedGraph DLL
            GraphPane myPane = pane[0]; //create an empty Graph Pane object
            myPane.Title.Text = "Tasks assigned last week"; //Title text property of pane object
            myPane.XAxis.Title.Text = "Day of the week"; //Title X axis label text property
            myPane.YAxis.Title.Text = "Tasks assigned"; //Title Y axis label text property
            //PointPairList class came from the ZedGraph DLL
            PointPairList list1 = new PointPairList(); //New Point Pair List object
            //Create some plotting line to display
            list1.Add(1, 3);
            list1.Add(2, 5);
            list1.Add(3, 5);
            list1.Add(4, 2);
            list1.Add(5, 10);
            list1.Add(6, 6);
            list1.Add(7, 2);
            //Use a LineItem type chart came from the ZedGraph DLL
            string textForLegend = "Tasks assigned";
            myPane.CurveList.Clear();
            LineItem myCurve = myPane.AddCurve(textForLegend,
              list1, Color.Red, SymbolType.Diamond);
            myCurve.Symbol.IsVisible = true;
        }
        protected void ZedGraphWeb1_RenderGraph2(ZedGraphWeb webObject, Graphics g, MasterPane pane)
        {
            //GraphPane class came from the ZedGraph DLL
            GraphPane myPane = pane[0]; //create an empty Graph Pane object
            myPane.Title.Text = "Number of tasks completed last week"; //Title text property of pane object
            myPane.XAxis.Title.Text = "Day of the week"; //Title X axis label text property
            myPane.YAxis.Title.Text = "Tasks completed"; //Title Y axis label text property
            //PointPairList class came from the ZedGraph DLL
            PointPairList list1 = new PointPairList(); //New Point Pair List object
            //Create some plotting line to display
            list1.Add(1, 2);
            list1.Add(2, 3);
            list1.Add(3, 5);
            list1.Add(4, 2);
            list1.Add(5, 7);
            list1.Add(6, 4);
            list1.Add(7, 2);
            //Use a LineItem type chart came from the ZedGraph DLL
            string textForLegend = "Tasks completed";
            myPane.CurveList.Clear();
            BarItem myBar = myPane.AddBar(textForLegend, list1, Color.SkyBlue);
        }
        protected void ZedGraphWeb1_RenderGraph3(ZedGraphWeb webObject, Graphics g, MasterPane pane)
        {
            //GraphPane class came from the ZedGraph DLL
            GraphPane myPane = pane[0]; //create an empty Graph Pane object
            myPane.Title.Text = "Category of Tasks"; //Title text property of pane object
            myPane.AddPieSlice(4, Color.Red, 0, "Personal");
            myPane.AddPieSlice(7, Color.Green, 0, "Homework");
            myPane.AddPieSlice(2, Color.Blue, 0, "Work");
            myPane.AddPieSlice(12, Color.Yellow, 0, "Other");
        }


    }
}