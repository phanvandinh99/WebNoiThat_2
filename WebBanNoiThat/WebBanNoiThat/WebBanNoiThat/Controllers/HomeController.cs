﻿using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using WebBanNoiThat.Models;

namespace WebBanNoiThat.Controllers
{
    public class HomeController : Controller
    {
        private readonly BanNoiThatContext _context;

        public HomeController(BanNoiThatContext context)
        {
            _context = context;
        }

        public async Task<IActionResult> Index()
        {
            var banTraiCayRauCuContext = _context.SanPhams.Include(s => s.MaDmNavigation);
            return View(await banTraiCayRauCuContext.ToListAsync());
        }
        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
