using CRUDinMVC.Models;
using CRUDinMVC.DBManager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CRUDinMVC.Repository;

namespace CRUDinMVC.Controllers
{
    public class UserController : Controller
    {
        //DAL dal = new DAL();
        userRepository usr = new userRepository();
        
        // GET: User
        public ActionResult Index()
        {
            ModelState.Clear();
            return View(usr.display());
        }

        // GET: User/Details/5
        public ActionResult Details(int id)
        {
            return View(usr.display().Find(ur=>ur.id==id));
        }

        // GET: User/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: User/Create
        [HttpPost]
        public ActionResult Create(UserRegModel userRegModel)
        {
            try
            {
                // TODO: Add insert logic here
                if (usr.InsertData(userRegModel))
                {
                    ViewBag.Message = "Data Saved Successfully !";
                }
                return View(userRegModel);
                //return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: User/Edit/5
        public ActionResult Edit(int id)
        {
            return View(usr.display().Find(ur => ur.id == id));
        }

        // POST: User/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, UserRegModel ur)
        {
            try
            {
                // TODO: Add update logic here
                if (usr.UpdateData(ur))
                {
                    ViewBag.Message = "Data Updated Successfully!";
                }

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: User/Delete/5
        public ActionResult Delete(int id)
        {
            return View(usr.display().Find(ur => ur.id == id));
        }

        // POST: User/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, UserRegModel ur)
        {
            try
            {
                // TODO: Add delete logic here
                if (usr.DeleteData(ur))
                {
                    ViewBag.Message = "Data Deleted Successfully!";
                }
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
