using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace driver_PM_software
{
    class IO_Propiedades
    {
        public string direccion_archivo_propiedades = "propiedades.dll";
        public string[,] matrixPropiedades = new string[500, 2];

        public void reset()
        {
            string data = "";
            for (int i = 0; i < 10; i++)
            {
                data += "V" + i.ToString() + "\t" + "0" + "\r\n";
            }
            StreamWriter sw = new StreamWriter(direccion_archivo_propiedades);
            sw.Write(data);
            sw.Close();
        }

        public void guardarPropiedades(int index, string NombrePropiedad, string ValorPropiedad)
        {
            matrixPropiedades[index, 0] = NombrePropiedad;
            matrixPropiedades[index, 1] = ValorPropiedad;
            string data = "";
            for (int i = 0; i < 500; i++)
            {
                data += matrixPropiedades[i, 0] + "\t" + matrixPropiedades[i, 1] + "\r\n";
            }
            StreamWriter sw = new StreamWriter(direccion_archivo_propiedades);
            sw.Write(data);
            sw.Close();
        }

        public void leerPropiedades()
        {
            StreamReader sr = new StreamReader(direccion_archivo_propiedades);
            string dataIn = sr.ReadToEnd();
            sr.Close();
            int lmax = dataIn.Length;
            int index = 0;
            string s0 = "";
            byte b;
            char c;
            for (int i = 0; i < lmax; i++)
            {
                c = dataIn[i];
                b = (byte)c;
                if (b == 9)
                {
                    matrixPropiedades[index, 0] = s0;
                    s0 = "";
                }
                else
                {
                    if ((byte)dataIn[i] == 13)
                    {
                        matrixPropiedades[index, 1] = s0;
                        index++;
                    }
                    else
                    {
                        if ((byte)dataIn[i] == 10)
                        {
                            s0 = "";
                        }
                        else
                        {
                            //+= es para poner el valor anterior y el actual
                            s0 += dataIn[i];
                        }
                    }
                }
            }
        }





    }
}
