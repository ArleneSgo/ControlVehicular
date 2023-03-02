using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ControlVehicular.Model;
using ControlVehicular.Models;

namespace ControlVehicular.Controllers
{
    public class UserController
    {
        public static USERS_Users Login(USERS_Users user)
        {
            try
            {
                if (user.UserName != string.Empty && user.Password != string.Empty)
                {
                    var resultado = UserModel.Login(user);
                    if (resultado != null)
                    {
                        return resultado;
                    }
                    else
                    {
                        throw new Errors("Usuario y/o contraseña incorrectos");
                    }
                }
                else
                {
                    throw new Errors("Favor de ingresar Usuario y Contraseña");
                }
            }
            catch (Errors ex)
            {
                throw new Errors(ex.ErrorMessage);
            }
            catch (Exception ex)
            {
                throw new Exception("Hubo un error en la capa del Modelo al iniciar sesión: " + ex.Message.ToString());
            }
        }
    }
}