using System;
using System.Web.UI;
using System.Xml;

namespace PE_GrpProject
{
    public partial class ContactUs : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void SubmitForm(object sender, EventArgs e)
        {
            string firstName = Request.Form["first-name"];
            string lastName = Request.Form["last-name"];
            string company = Request.Form["company"];
            string email = Request.Form["email"];
            string phoneNumber = Request.Form["phone-number"];
            string message = Request.Form["message"];
            string country = Request.Form["country"];

            SaveToXml(firstName, lastName, company, email, country, phoneNumber, message);
        }

        private void SaveToXml(string firstName, string lastName, string company, string email, string country, string phoneNumber, string message)
        {
            string filePath = Server.MapPath("~/ContactFormSubmissions.xml");

            XmlDocument xmlDoc = new XmlDocument();

            if (System.IO.File.Exists(filePath))
            {
                xmlDoc.Load(filePath);
                XmlNode rootNode = xmlDoc.SelectSingleNode("ContactFormSubmissions");
                AppendNewSubmission(xmlDoc, rootNode, firstName, lastName, company, email, country, phoneNumber, message);
            }
            else
            {
                XmlNode rootNode = xmlDoc.CreateElement("ContactFormSubmissions");
                xmlDoc.AppendChild(rootNode);
                AppendNewSubmission(xmlDoc, rootNode, firstName, lastName, company, email, country, phoneNumber, message);
            }

            xmlDoc.Save(filePath);
        }

        private void AppendNewSubmission(XmlDocument xmlDoc, XmlNode rootNode, string firstName, string lastName, string company, string email, string country, string phoneNumber, string message)
        {
            XmlNode userNode = xmlDoc.CreateElement("Submission");
            rootNode.AppendChild(userNode);

            XmlNode firstNameNode = xmlDoc.CreateElement("FirstName");
            firstNameNode.InnerText = firstName;
            userNode.AppendChild(firstNameNode);

            XmlNode lastNameNode = xmlDoc.CreateElement("LastName");
            lastNameNode.InnerText = lastName;
            userNode.AppendChild(lastNameNode);

            XmlNode companyNode = xmlDoc.CreateElement("Company");
            companyNode.InnerText = company;
            userNode.AppendChild(companyNode);

            XmlNode emailNode = xmlDoc.CreateElement("Email");
            emailNode.InnerText = email;
            userNode.AppendChild(emailNode);

            XmlNode countryNode = xmlDoc.CreateElement("Country");
            countryNode.InnerText = country;
            userNode.AppendChild(countryNode);

            XmlNode phoneNumberNode = xmlDoc.CreateElement("PhoneNumber");
            phoneNumberNode.InnerText = phoneNumber;
            userNode.AppendChild(phoneNumberNode);

            XmlNode messageNode = xmlDoc.CreateElement("Message");
            messageNode.InnerText = message;
            userNode.AppendChild(messageNode);
        }
    }
}
