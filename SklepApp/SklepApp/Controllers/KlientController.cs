﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SklepApp.Models;

namespace SklepApp.Controllers
{
    public class KlientController : Controller
    {
        private ZTW2Entities1 _db = new ZTW2Entities1();

        // GET: Klient
        public ActionResult Index()
        {
            return View(_db.Klient.ToList());
        }
    }
}