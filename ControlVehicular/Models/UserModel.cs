using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ControlVehicular.Model;

namespace ControlVehicular.Models
{
    public class UserModel
    {
        //Login
        public static USERS_Users Login(USERS_Users user)
        {
            try
            {
                using (var model = new CONTROL_VEHICULAR_Entities())
                {
                    var result = (from us in model.USERS_Users
                                  where (us.Password == user.Password
                                  && us.UserName == user.UserName)
                                  && us.Active == true
                                  select us).FirstOrDefault();
                    return result;
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo: " + ex.Message.ToString());
            }
        }
    }
}