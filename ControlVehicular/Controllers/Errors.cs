using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ControlVehicular.Controllers
{
    public class Errors : Exception
    {
        public Errors(string message)
        {
            errorMessage = message;
        }

        private string errorMessage;

        public string ErrorMessage
        {
            get { return errorMessage; }
            set { errorMessage = value; }
        }
    }
}