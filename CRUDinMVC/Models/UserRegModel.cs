﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CRUDinMVC.Models
{
    public class UserRegModel
    {
        [Required]
        [DisplayName("User ID")]
        public int id { get; set; }
        [Required]
        [DisplayName("Email ID")]
        public string emailid { get; set; }
        [Required]
        [DisplayName("User Password")]
        public string password { get; set; }
        [Required]
        [DisplayName("User Name")]
        public string name { get; set; }
    }
}