using project_spotonsepia.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Mvc;

namespace project_spotonsepia.Controllers
{
    public class HomeController : Controller 
    {
        ServicesEntities db = new ServicesEntities);
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            

            return View();
        }

        //[HttpPost]
        //public ActionResult Contact(string receiver, string subject, string message)
        //{
        //    try
        //    {
        //        if (ModelState.IsValid)
        //        {
        //            var senderEmail = new MailAddress("spotnsepi@gmail.com", "testing");
        //            var receiverEmail = new MailAddress(recEmail, "receiver");
        //            var password = "spotnsepia123";
        //            var sub = subject;
        //            var body = message;
        //            var smtp = new SmtpClient
        //            {
        //                Host = "smtp.gmail.com",
        //                Port = 587,
        //                EnableSsl = true,
        //                DeliveryMethod = SmtpDeliveryMethod.Network,
        //                UseDefaultCredentials = false,
        //                Credentials = new NetworkCredential(senderEmail.Address, password)
        //            };
        //            using (var mess = new MailMessage(senderEmail, recEmail)
        //            {
        //                Subject = subject,
        //                Body = body
        //            })
        //            {
        //                smtp.Send(mess);
        //                TempData["MessageSentSuccess"] =
        //                    "<script>alert('Your email has been sent!');</script>";
        //            }
        //            return View();
        //        }
        //    }
        //    catch (Exception)
        //    {
        //        ViewBag.Error = "Some Error";
        //    }
        //    return View();
        //}
        public ActionResult Services()
        {


            return View();
        }
       

        public ActionResult Portfolio()
        {


            return View();
        }

        public ActionResult ComingSoon()
        {


            return View();
        }


        public ActionResult blank()
        {


            return View();
        }
    }
}