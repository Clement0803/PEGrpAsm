using System;
using System.Collections.Generic;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace PE_GrpProject
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDataFromXml();
            }
        }

        public void LoadDataFromXml()
        {
            string xmlFilePath = Server.MapPath("~/Fruits.xml");
            XmlDocument xmlDocFruits = new XmlDocument();
            xmlDocFruits.Load(xmlFilePath);

            XmlNodeList fruitNodes = xmlDocFruits.SelectNodes("/fruits/fruit");
            if (fruitNodes == null)
            {
                System.Console.WriteLine("Error: No fruit nodes found in the xml file");
            }
            else
            {
                var fruits = new List<dynamic>();
                foreach (XmlNode fruitNode in fruitNodes)
                {
                    var fruit = new
                    {
                        Id = fruitNode.SelectSingleNode("fruit_id").InnerText,
                        Name = fruitNode.SelectSingleNode("name").InnerText,
                        Price = fruitNode.SelectSingleNode("price").InnerText,
                        Image = fruitNode.SelectSingleNode("img_path").InnerText
                    };
                    fruits.Add(fruit);
                }

                rptFruits.DataSource = fruits;
                rptFruits.DataBind();
            }
        }

        protected void AddToCart(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string fruit_id = btn.CommandArgument;

            XmlDocument xmlDocOrderItems = new XmlDocument();
            xmlDocOrderItems.Load(Server.MapPath("~/OrderItems.xml"));
            XmlNode RootNodeOrderItems = xmlDocOrderItems.SelectSingleNode("orderitems");
            XmlNode OrderItemNode = RootNodeOrderItems.AppendChild(xmlDocOrderItems.CreateNode(XmlNodeType.Element, "orderitem", ""));

            OrderItemNode.AppendChild(xmlDocOrderItems.CreateNode(XmlNodeType.Element, "fruit_id", "")).InnerText = fruit_id;
            OrderItemNode.AppendChild(xmlDocOrderItems.CreateNode(XmlNodeType.Element, "quantity", "")).InnerText = "1";

            xmlDocOrderItems.Save(Server.MapPath("~/OrderItems.xml"));

            ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('Added {fruit_id} to Cart :)');", true);
        }
    }
}
