using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO.Ports;
using System.Windows.Forms;

namespace driver_PM_software
{
    class Utilidades
    {

        public ComboBox PuertosSerialActivos()  //("w0=" + (dataP[0] * 256 + dataP[1]).ToString());
        {
            string namePort = "";
            ComboBox combox = new ComboBox();
            SerialPort sp = new SerialPort();

            combox.Items.Add("None");
            for (int i = 1; i < 21; i++)
            {
                if (sp.IsOpen)
                    sp.Close();

                namePort = "COM" + i.ToString();
                sp.PortName = namePort;
                try
                {
                    sp.Open();
                    combox.Items.Add(namePort);
                    combox.Text = namePort;

                }
                catch
                {
                }

            }
            if (sp.IsOpen)
                sp.Close();
            return combox;
        }
        SerialPort Sp = new SerialPort();


        public bool VerPuertosUSB(int maxPuertos, ToolStripComboBox CombosPuertos)
        {
            bool PuertosOk = false;
            CombosPuertos.Items.Clear();
            for (int i = 0; i < maxPuertos; i++)
            {
                try
                {
                    //el truco es ver si puede abrir los puertos, su pasa un error nos vamos a catch
                    Sp.PortName = "COM" + i.ToString();
                    Sp.Open();
                    CombosPuertos.Items.Add("COM" + i.ToString());
                    CombosPuertos.Text = "COM" + i.ToString();
                    Sp.Close();
                }
                catch
                {

                }
            }
            if (CombosPuertos.Items.Count == 0)
            {
                CombosPuertos.Items.Add("None");
                PuertosOk = false;
                CombosPuertos.Text = "None";
            }
            else
                PuertosOk = true;


            return PuertosOk;
        }
    }
}
