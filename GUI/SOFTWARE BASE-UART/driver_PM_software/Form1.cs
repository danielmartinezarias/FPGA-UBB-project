using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;
//using System.Windows.Forms.DataVisualization.Charting;
using System.Globalization;
using System.Runtime.InteropServices;     // DLL support






namespace driver_PM_software
{
    
    public partial class Form1 : Form
    {
        /// <summary>
        /// agregamos la interfaz de dll para video y dpti
        /// </summary>
        //public const string CppFunctionsDLL = @"C:\Users\danie\Dropbox\physics\FPGA_UBB\221025_uart_hdmi_images\SOFTWARE BASE-UART\genesys2_dpti_video_dll\genesys2_cpp.cpp";
        public const string CppFunctionsDLL = @"\genesys2_dpti_video_dll.dll";

        [DllImport(CppFunctionsDLL, CallingConvention = CallingConvention.Cdecl)]
        public static extern int main(int cszArg,  string[] rgszArg, IntPtr byteArray, int size);
        //public static extern int main(int cszArg,  string[] rgszArg, byte[] LG_matrix2);
        [DllImport(CppFunctionsDLL, CallingConvention = CallingConvention.Cdecl)]
        public static extern bool FParseArguments(int cszArg,  string[] rgszArg);
        [DllImport(CppFunctionsDLL, CallingConvention = CallingConvention.Cdecl)]
        public static extern bool FHelp();
        [DllImport(CppFunctionsDLL, CallingConvention = CallingConvention.Cdecl)]
        public static extern int SubtractNumbers(int a, int b);

        


public Form1()
        {
            InitializeComponent();
            ChartLoad();
        }

        ////////////////////////////////////////////////////////////////////////////////////////
        /////////////////////////////DEFINICIONES///////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////

        Utilidades objetoUtilidades = new Utilidades();
        IO_Propiedades ObjetoIOP = new IO_Propiedades();
        convertir ObjetoConvertir = new convertir();

        byte[] byteRx = new byte[1];
        int controlRx = 0;
        ListBox Listbox_identificadorPalabra = new ListBox();
        string RxString_txt = "";
        byte[] VectorByte3 = new byte[1200];
        int indexVectorByte = 0;
        public int[] VectMascaras01 = new int[2000];
        string direccion_guardar2 = "";
        public string foldermedicion = "Mediciones";
        public int[] Vect_Vout_APD = new int[50];
        public int[] Vect_NexysA7_Vout = new int[50];
        public int[] Vect_NexysA7_APD = new int[50];
        



        void ChartLoad()
        {
            var chart = chart1.ChartAreas[0];
            //chart.AxisX.IntervalType = System.Windows.Forms.DataVisualization.Charting.DateTimeIntervalType.Number;
            chart.AxisX.LabelStyle.Format = "";
            chart.AxisY.LabelStyle.Format = "";
            chart1.ChartAreas[0].AxisX.Title = "Medicion";
            chart1.ChartAreas[0].AxisY.Title = "Counts";
            chart.AxisX.LabelStyle.IsEndLabelVisible = false;
            chart.AxisY.LabelStyle.IsEndLabelVisible = false;
            chart.AxisX.Minimum = 0;
            chart.AxisY.Minimum = 0;
            //chart.AxisX.Interval = 0.5;
            //chart.AxisY.Interval = 10;
            chart1.Series[0].IsVisibleInLegend = false;

            chart1.Series.Add("Det0");
            //chart1.Series["Det0"].ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Point;
            chart1.Series["Det0"].Color = Color.Navy;

            chart1.Series.Add("Th0");
            //chart1.Series["Th0"].ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Point;
            chart1.Series["Th0"].Color = Color.LightSkyBlue;

            var chartB = chart2.ChartAreas[0];
            //chart.AxisX.IntervalType = System.Windows.Forms.DataVisualization.Charting.DateTimeIntervalType.Number;
            chartB.AxisX.LabelStyle.Format = "";
            chartB.AxisY.LabelStyle.Format = "";
            chart2.ChartAreas[0].AxisX.Title = "Medicion";
            chart2.ChartAreas[0].AxisY.Title = "Counts";
            chartB.AxisX.LabelStyle.IsEndLabelVisible = false;
            chartB.AxisY.LabelStyle.IsEndLabelVisible = false;
            chartB.AxisX.Minimum = 0;
            chartB.AxisY.Minimum = 0;
            //chart.AxisX.Interval = 0.5;
            //chart.AxisY.Interval = 10;
            chart2.Series[0].IsVisibleInLegend = false;

            chart2.Series.Add("Det1");
            //chart1.Series["Det1"].ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Point;
            chart2.Series["Det1"].Color = Color.Navy;

            chart2.Series.Add("Th1");
            //chart1.Series["Th1"].ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Point;
            chart2.Series["Th1"].Color = Color.LightSkyBlue;




        }


        private void cOMToolStripMenuItem_MouseEnter(object sender, EventArgs e)
        {
            conectarToolStripMenuItem.Enabled = objetoUtilidades.VerPuertosUSB(20, toolStripComboBox_COMPORTS);
        }
 

        private void conectarToolStripMenuItem_Click_1(object sender, EventArgs e)
        {
            serialPort_FPGA.PortName = toolStripComboBox_COMPORTS.Text;
            serialPort_FPGA.Open();
            serialPort_FPGA.DataReceived += new System.IO.Ports.SerialDataReceivedEventHandler(RecepcionSerial);
            toolStripStatusLabel1.Text = "Conectado a " + serialPort_FPGA.PortName;
            //cargo la configuracion anterior
            //numericUpDown1.Enabled = true;
            //button1.Enabled = true;
            button1.Enabled = true;
            button6.Enabled = true;
            checkBox1.Enabled = true;
            radioButton1.Enabled = true;
            radioButton2.Enabled = true;
            radioButton3.Enabled = true;
            radioButton4.Enabled = true;
            radioButton5.Enabled = true;
            radioButton6.Enabled = true;
            radioButton7.Enabled = true;
            numericUpDown1.Enabled = true;
            numericUpDown2.Enabled = true;
            numericUpDown3.Enabled = true;
            numericUpDown4.Enabled = true;
            numericUpDown5.Enabled = true;
            numericUpDown6.Enabled = true;
            numericUpDown7.Enabled = true;
            numericUpDown14.Enabled = true;
            numericUpDown15.Enabled = true;
            numericUpDown16.Enabled = true;
            numericUpDown8.Enabled = true;
            numericUpDown9.Enabled = true;
            //numericUpDown11.Enabled = true;
            //numericUpDown13.Enabled = true;
            if (serialPort_FPGA.IsOpen)
            {
                numericUpDown7.Value = Convert.ToDecimal(ObjetoIOP.matrixPropiedades[23, 1]);
                numericUpDown1.Value = Convert.ToDecimal(ObjetoIOP.matrixPropiedades[26, 1]);
                numericUpDown2.Value = Convert.ToDecimal(ObjetoIOP.matrixPropiedades[20, 1]);
                numericUpDown3.Value = Convert.ToDecimal(ObjetoIOP.matrixPropiedades[27, 1]);
                numericUpDown4.Value = Convert.ToDecimal(ObjetoIOP.matrixPropiedades[28, 1]);
                numericUpDown5.Value = Convert.ToDecimal(ObjetoIOP.matrixPropiedades[29, 1]);
                numericUpDown6.Value = Convert.ToDecimal(ObjetoIOP.matrixPropiedades[30, 1]);
                numericUpDown14.Value = Convert.ToDecimal(ObjetoIOP.matrixPropiedades[39, 1]);
                numericUpDown15.Value = Convert.ToDecimal(ObjetoIOP.matrixPropiedades[40, 1]);
                numericUpDown16.Value = Convert.ToDecimal(ObjetoIOP.matrixPropiedades[41, 1]);
                numericUpDown8.Value = Convert.ToDecimal(ObjetoIOP.matrixPropiedades[42, 1]);
                radioButton1.Checked = true;
                radioButton4.Checked = true;
                numericUpDown9.Value = Convert.ToDecimal(ObjetoIOP.matrixPropiedades[45, 1]);
                if(ObjetoIOP.matrixPropiedades[46, 1] == "Alice") { radioButton6.Checked = true;}
                if (ObjetoIOP.matrixPropiedades[46, 1] == "Bob") { radioButton7.Checked = true; }

            }
            else
            {
                MessageBox.Show("Conectar COM");
            }
        }


        ////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////

        ////////////////////////////////////////////////////////////////////////////////////////
        /////////////////////////RECEPCION SERIAL///////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////



        int N16 = 3;//numero de data 16 bits
        int N32 = 2;//numero de data 32 bits
        int Ndata;
        public int[] Vect_FPGAout = new int[50];
        public uint[] Vect_FPGAoutMem = new uint[200000];
        public int maxChartDet = 100;
        int dataPoints;
        private void RecepcionSerial(object sender, System.IO.Ports.SerialDataReceivedEventArgs e)
        {
            while (serialPort_FPGA.BytesToRead != 0)
            {


                switch (controlRx)
                {
                    case 0:
                        //voy recibiendo los datos seriales de la FPGA, si cumple con la condicion del protocolo, entonces guardo el valor
                        //el protocolo para recibir un dato correcto es recibir los siguientes numeros
                        //0 255 0 255 Ndata(2 bytes) palabra_ctrl
                        Listbox_identificadorPalabra.Items.Insert(0, (byte)serialPort_FPGA.ReadByte());

                        if (Listbox_identificadorPalabra.Items.Count > 6)
                        {
                            //
                            for (int i = 0; i < 7; i++) // busco el 0 255 0 255 Ndata palabra_ctrl
                            {
                                VectorByte3[6 - i] = (byte)Listbox_identificadorPalabra.Items[i];
                            }

                            if (VectorByte3[0] == 0 && VectorByte3[1] == 255 && VectorByte3[2] == 0 && VectorByte3[3] == 255)
                            {
                                Ndata = VectorByte3[4] * 256 + VectorByte3[5];//Ndata es de 16 bits
                                if (VectorByte3[6] == 16)//palabra_ctrl 16 bits
                                {
                                    controlRx = 1;
                                    Listbox_identificadorPalabra.Items.Clear();
                                    indexVectorByte = 7;//revisar aqui pues cambie de 6 a 7 porque Ndata es de 16 bits ahora
                                }

                                if (VectorByte3[6] == 32)//palabra_ctrl 32bits
                                {
                                    controlRx = 2;
                                    Listbox_identificadorPalabra.Items.Clear();
                                    indexVectorByte = 7;
                                }

                                if (VectorByte3[6] == 99)//palabra_ctrl memoria
                                {
                                    controlRx = 3;
                                    Listbox_identificadorPalabra.Items.Clear();
                                    indexVectorByte = 7;
                                }
                            }

                        }
                        break;

                    case 1:

                        if (indexVectorByte < (Ndata + 9))//20 en total          0 255 0 255 Ndata palabra_ctrl [Ndata bytes de data] 1 254 1 254
                        {
                            VectorByte3[indexVectorByte] = (byte)serialPort_FPGA.ReadByte();
                            indexVectorByte++;
                        }
                        else
                        {
                            VectorByte3[indexVectorByte] = (byte)serialPort_FPGA.ReadByte();//aqui completo el vector y termino

                            //si quieres monitorear lo que llega de la FPGA agrega un listBox1 e invoca actualizarRx2
                            //this.Invoke(new EventHandler(actulizarRx2));//vamos a actualizarRx2
                        }
                        //break;
                        if ((N16 * 2 + N32 * 4) == Ndata)
                        {
                            Vect_FPGAout = ObjetoConvertir.VectorByte_2VectorIntNdata(VectorByte3, N16, N32);//convierto la data a numeros de 16 bits y 32 bits
                            this.Invoke(new EventHandler(actulizarRx));//vamos a actualizarRx
                            controlRx = 0;
                            indexVectorByte = 0;
                        }
                        else { MessageBox.Show("Wrong byte conversion in RecepcionSerial", "Error UART"); }

                        break;

                    case 2:

                        if (indexVectorByte < 15)// ver caso 16 bits y copiar, no probado 04.12.23
                        {
                            VectorByte3[indexVectorByte] = (byte)serialPort_FPGA.ReadByte();
                            indexVectorByte++;
                        }
                        else
                        {
                            Vect_NexysA7_APD = ObjetoConvertir.VectorByte_NexysA7_APD_2VectorInt(VectorByte3);
                            this.Invoke(new EventHandler(actulizarRx));
                            controlRx = 0;
                            indexVectorByte = 0;
                        }
                        break;

                    case 3:

                        if (indexVectorByte < (Ndata + 10))//  0 255 0 255 Ndata palabra_ctrl [Ndata bytes de data] 1 254 1 254
                        {
                            VectorByte3[indexVectorByte] = (byte)serialPort_FPGA.ReadByte();
                            indexVectorByte++;
                            //label1.Text = "llego algo pero no he validado";
                        }
                        else
                        {
                            VectorByte3[indexVectorByte] = (byte)serialPort_FPGA.ReadByte();//aqui completo el vector y termino
                            //si quieres monitorear lo que llega de la FPGA agrega un listBox1 e invoca actualizarRx
                            //this.Invoke(new EventHandler(actulizarRx2));//vamos a actualizarRx2
                            if ((dataPoints * 2 + dataPoints * 4 * 2 + 22) == Ndata)
                            {
                                N16 = 1; //
                                N32 = 5;// ver en FPGA
                                Vect_FPGAoutMem = ObjetoConvertir.VectorByte_2VectorIntNdataMemory(VectorByte3, N16, N32, dataPoints);//convierto la data a numeros de 16 bits y 32 bits
                                this.Invoke(new EventHandler(actulizarRx3));//vamos a actualizarRx
                                controlRx = 0;
                                indexVectorByte = 0;
                            }
                            else { MessageBox.Show("Wrong byte conversion in RecepcionSerial", "Error UART"); }
                        }
                        break;
                }

            }



        }

        public int SUM_counts = 0;
        private void actulizarRx(object sender, EventArgs e1)
        {
            //if (button1.Text == "Measurement in process")
            {
                
                    if (Vect_NexysA7_APD[1] == 1 && Vect_NexysA7_APD[2] == 254 && Vect_NexysA7_APD[3] == 1 && Vect_NexysA7_APD[4] == 254)
                    {
                    //////////////////////////////////
                    ///

                    //label1.Text = Convert.ToString(Vect_NexysA7_APD[0]);


                        if (button1.Text == "Stop")
                        {
                            RxString_txt = "";

                            for (int i = 0; i < 1; i++)//
                            {
                                RxString_txt = RxString_txt + Convert.ToString(index_medicion) + "\t" + Convert.ToString(Vect_NexysA7_APD[i]) + "\t";
                                //listBox1.Items.Add(VectMascaras01[i]);
                            }
                            RxString_txt = RxString_txt + "\r\n";

                            StreamWriter sw = new StreamWriter(direccion_guardar2, true);
                            sw.Write(RxString_txt);
                            sw.Close();
                            RxString_txt = "";
                            //chart1.ChartAreas[0].AxisX.Minimum = 0;
                        ParametroSerial(21, 8, 1, 0);
                        ParametroSerial(21, 8, 0, 0);
                        //chart1.Series["Counts1"].Points.AddXY(index_medicion, Vect_NexysA7_APD[0]);
                            index_medicion = index_medicion + 1;
                            //labelAPD1.Text = "APD1:  " + Convert.ToString(Vect_NexysA7_APD[0]);
                             //chart1.ChartAreas[0].AxisX.Maximum = VectNESO_Vout_APD[0] + 10;
                            //chart1.ChartAreas[0].AxisX.Interval = 50;

                        }
                        

                        


                    }
                
            }

        }

        ////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////

        ////////////////////////////////////////////////////////////////////////////////////////
        /////////////////////////TRANSMISION SERIAL/////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////

        private void EnviarNum(int num)
        {
            if (serialPort_FPGA.IsOpen == true)
            {
                byteRx[0] = (byte)num;
                serialPort_FPGA.Write(byteRx, 0, 1);
                System.Threading.Thread.Sleep(1);
            }
            else
            {
                MessageBox.Show("Puerto no abierto");
            }

        }

        private void ParametroSerial(int orden, int bits, int valor, long valor_long)
        {
            if (bits < 33)
            {
                byte[] valor32bits = new byte[4];
                valor32bits = ObjetoConvertir.int2byte(valor);

                byte[] orden32bits = new byte[4];
                orden32bits = ObjetoConvertir.int2byte(orden);

                switch (bits)
                {
                    case 8:
                        EnviarNum(8);
                        EnviarNum(valor32bits[0]);
                        break;

                    case 16:
                        EnviarNum(7);
                        EnviarNum(valor32bits[1]);
                        EnviarNum(valor32bits[0]);
                        break;

                    case 24:
                        EnviarNum(6);
                        EnviarNum(valor32bits[2]);
                        EnviarNum(valor32bits[1]);
                        EnviarNum(valor32bits[0]);
                        break;

                    default:
                        EnviarNum(5);
                        EnviarNum(valor32bits[3]);
                        EnviarNum(valor32bits[2]);
                        EnviarNum(valor32bits[1]);
                        EnviarNum(valor32bits[0]);
                        break;
                }

                EnviarNum(orden32bits[1]);
                EnviarNum(orden32bits[0]);
            }
            else
            {
                byte[] valor64bits = new byte[8];
                valor64bits = ObjetoConvertir.long2byte(valor_long);

                byte[] orden32bits = new byte[4];
                orden32bits = ObjetoConvertir.int2byte(orden);

                switch (bits)
                {
                    case 40:
                        EnviarNum(4);
                        EnviarNum(valor64bits[4]);
                        EnviarNum(valor64bits[3]);
                        EnviarNum(valor64bits[2]);
                        EnviarNum(valor64bits[1]);
                        EnviarNum(valor64bits[0]);
                        break;

                    case 48:
                        EnviarNum(3);
                        EnviarNum(valor64bits[5]);
                        EnviarNum(valor64bits[4]);
                        EnviarNum(valor64bits[3]);
                        EnviarNum(valor64bits[2]);
                        EnviarNum(valor64bits[1]);
                        EnviarNum(valor64bits[0]);
                        break;

                    case 56:
                        EnviarNum(2);
                        EnviarNum(valor64bits[6]);
                        EnviarNum(valor64bits[5]);
                        EnviarNum(valor64bits[4]);
                        EnviarNum(valor64bits[3]);
                        EnviarNum(valor64bits[2]);
                        EnviarNum(valor64bits[1]);
                        EnviarNum(valor64bits[0]);
                        break;

                    default:
                        EnviarNum(1);
                        EnviarNum(valor64bits[7]);
                        EnviarNum(valor64bits[6]);
                        EnviarNum(valor64bits[5]);
                        EnviarNum(valor64bits[4]);
                        EnviarNum(valor64bits[3]);
                        EnviarNum(valor64bits[2]);
                        EnviarNum(valor64bits[1]);
                        EnviarNum(valor64bits[0]);
                        break;
                }

                EnviarNum(orden32bits[1]);
                EnviarNum(orden32bits[0]);

            }

        }


        private void Form1_Load(object sender, EventArgs e)
        {
            ObjetoIOP.leerPropiedades();
            ObjetoConvertir.reset();
            //refreshChart();
        }

        private void Form1_FormClosing_1(object sender, FormClosingEventArgs e)
        {
            if (serialPort_FPGA.IsOpen)
            {
                //ParametroSerial(97 + 10, 8, 0);
                serialPort_FPGA.Close();
            }
            System.Windows.Forms.Application.Exit();
        }


        ////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////


        ////////////////////////////////////////////////////////////////////////////////////////
        ///////////////////////MANEJO DE CONTROLES DE  WINDOWS FORM/////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////

        public String[] controles = new string[] {
                                                    "numericUpDown1","numericUpDown2","numericUpDown3","numericUpDown4","numericUpDown6","numericUpDown7","numericUpDown5","numericUpDown8"
                                                };

        public int[] orden = new int[] {
                                            1,2,3,4,5,6,7,8
                                        };

        int index_medicion = 0;





        private void numericUpDown2_ValueChanged(object sender, EventArgs e)
        {
            ObjetoIOP.guardarPropiedades(20, "EstadoRx_numericUpDown2", numericUpDown2.Value.ToString());
            ParametroSerial(20, 8, (int)numericUpDown2.Value, 0);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            ParametroSerial(22, 8, 1, 0);
            ParametroSerial(21, 8, 0, 0);
            if (button1.Text == "Start")
            {
                button1.Text = "Stop";
                index_medicion = 0;
                if (checkBox1.Checked == true)
                {
                    direccion_guardar2 = foldermedicion + @"\FPGA_stored_data_" + DateTime.Now.ToString("yyyy-MM-dd_HH_mm_ss") + ".txt";
                    StreamWriter sw = new StreamWriter(direccion_guardar2);
                    sw.Write("N\tfreq_sync\tfreq_sync\tdelay_pulse\twidth_pulse\tdelay_det\twidth_det\tmascara\tADC0\tADC1\r\n");
                    sw.Close();
                }
                checkBox1.Enabled = false;
                //set parameters chartDET
                chart1.Series["Det0"].Points.Clear();
                chart1.Series["Th0"].Points.Clear();
                chart2.Series["Det1"].Points.Clear();
                chart2.Series["Th1"].Points.Clear();
                //chart1.Series["Threshold"].Points.Clear();
                chart1.ChartAreas[0].AxisX.Minimum = 0;
                //chart1.ChartAreas[0].AxisX.Maximum = index_medicion + 10;
                //chart1.ChartAreas[0].AxisX.Interval = 50;
                //chart1.ChartAreas[0].AxisY.Minimum = -10;
                //chart1.ChartAreas[0].AxisY.Maximum = 4100;



                ParametroSerial(21, 8, 1, 0);

            }
            else
            {
                ParametroSerial(21, 8, 0, 0);
                checkBox1.Enabled = true;
                button1.Text = "Start";
            }
        }

        int freq_sync_FPGA;
        private void numericUpDown1_ValueChanged(object sender, EventArgs e)
        {
            freq_sync_FPGA = (int)(numericUpDown7.Value / 2 / numericUpDown1.Value);
            ObjetoIOP.guardarPropiedades(26, "freq_sync_numericUpDown1", numericUpDown1.Value.ToString());
            label1.Text = Convert.ToString(freq_sync_FPGA);
            ParametroSerial(26, 32, freq_sync_FPGA, 0);
        }

        int delay_pulse_FPGA;
        private void numericUpDown3_ValueChanged(object sender, EventArgs e)
        {
            delay_pulse_FPGA = (int)(numericUpDown3.Value * numericUpDown7.Value / 1000);
            ObjetoIOP.guardarPropiedades(27, "delay_pulse_numericUpDown3", numericUpDown3.Value.ToString());
            label1.Text = Convert.ToString(delay_pulse_FPGA);
            ParametroSerial(27, 32, delay_pulse_FPGA, 0);
        }

        int width_pulse_FPGA;
        private void numericUpDown4_ValueChanged(object sender, EventArgs e)
        {
            width_pulse_FPGA = (int)((numericUpDown4.Value)* numericUpDown7.Value / 1000);
            ObjetoIOP.guardarPropiedades(28, "width_pulse_numericUpDown4", numericUpDown4.Value.ToString());
            label1.Text = Convert.ToString(width_pulse_FPGA);
            ParametroSerial(28, 32, width_pulse_FPGA, 0);
        }
      
        int delay_det_FPGA;
        private void numericUpDown5_ValueChanged(object sender, EventArgs e)
        {
            delay_det_FPGA = (int)(numericUpDown5.Value * 2*numericUpDown7.Value / 1000);//edit DMA 23-09 ---------------*2 to match 400MHz
            ObjetoIOP.guardarPropiedades(29, "delay_det_numericUpDown5", numericUpDown5.Value.ToString());
            label1.Text = Convert.ToString(delay_det_FPGA);
            ParametroSerial(29, 32, delay_det_FPGA, 0);
        }

        int width_det_FPGA;
        private void numericUpDown6_ValueChanged(object sender, EventArgs e)
        {
            width_det_FPGA = (int)((numericUpDown6.Value)* 2*numericUpDown7.Value / 1000);//edit DMA 23-09 ---------------*2 to match 400MHz
            ObjetoIOP.guardarPropiedades(30, "width_det_numericUpDown6", numericUpDown6.Value.ToString());
            label1.Text = Convert.ToString(width_det_FPGA);
            ParametroSerial(30, 32, width_det_FPGA, 0);
        }

        private void numericUpDown7_ValueChanged(object sender, EventArgs e)
        {
            ObjetoIOP.guardarPropiedades(23, "master_clk_numericUpDown7", numericUpDown7.Value.ToString());
        }

        Bitmap image1;
        Bitmap image12;
        /*private void button2_Click(object sender, EventArgs e)
        {
            OpenFileDialog openFileDialog1 = new OpenFileDialog();
            openFileDialog1.RestoreDirectory = true;
            string selectedFileName = "";
            try
            {
                if (openFileDialog1.ShowDialog() == DialogResult.OK)
                {
                    selectedFileName = openFileDialog1.FileName;
                    //primero mando la instruccion de que voy a enviar una imagen y la direccion de la imagen
                    //ParametroSerial(31, 8, (int)numericUpDown8.Value, 0);
                }
            
                

                // Retrieve the image.
                image1 = new Bitmap(selectedFileName, true);
                long pixel_long = 0;
                int x, y;
                //int pixClr = 0;
                // Loop through the images pixels to reset color.
                for (x = 0; x < image1.Width; x=x+8)
                {
                    for (y = 520; y < 521; y++)
                    //for (y = 0; y < image1.Height; y++)
                    {
                        Color pixelColor1 = image1.GetPixel(x, y);
                        Color pixelColor2 = image1.GetPixel(x+1, y);
                        Color pixelColor3 = image1.GetPixel(x+2, y);
                        Color pixelColor4 = image1.GetPixel(x+3, y);
                        Color pixelColor5 = image1.GetPixel(x+4, y);
                        Color pixelColor6 = image1.GetPixel(x+5, y);
                        Color pixelColor7 = image1.GetPixel(x+6, y);
                        Color pixelColor8 = image1.GetPixel(x+7, y);
                        pixel_long = (long)256 * 256 * 256 * 256 * 256*256*256*pixelColor8.R + (long)256 * 256 * 256 * 256 * 256*256*pixelColor7.R + (long)256 * 256 * 256 * 256 * 256*pixelColor6.R + (long)256*256*256*256* pixelColor5.R+ (long)256 * 256*256* pixelColor4.R + (long)256 * 256* pixelColor3.R + (long)256 * pixelColor2.R + (long)pixelColor1.R;

                        //ParametroSerial(33, 8, pixelColor1.R, 0);
                        ParametroSerial(33, 64, 0, pixel_long);
                        //pixClr++;
                        //ParametroSerial(33, 8, pixClr, 0);
                    }
                    //progressBar1.Value = x;
                }

                //cuando termino de enviar la imagen
                ParametroSerial(32, 8, 0, 0);

                // Set the PictureBox to display the image.
                pictureBox1.Image = image1;

                // Display the pixel format in Label1.
                label9.Text = "Image: " + selectedFileName;
            }
            catch (ArgumentException)
            {
                MessageBox.Show("There was an error." +
                    "Check the path to the image file.");
            }
        }*/




        /*private void button5_Click(object sender, EventArgs e)
        {
            OpenFileDialog openFileDialog1 = new OpenFileDialog();
            openFileDialog1.RestoreDirectory = true;
            string selectedFileName = "";
            try
            {
                if (openFileDialog1.ShowDialog() == DialogResult.OK)
                {
                    selectedFileName = openFileDialog1.FileName;
                    //primero mando la instruccion de que voy a enviar una imagen y la direccion de la imagen
                    //ParametroSerial(31, 8, (int)numericUpDown8.Value, 0);
                }

                // Set the PictureBox to display the image.
                image1 = new Bitmap(selectedFileName, true);

                //Image image12 = Resize(image1, 1280, 1024);
                //image1 = new Bitmap(image12);

                int x_max = image1.Width;
                x_max = 1280;
                int y_max = image1.Height;
                y_max = 1024;

                byte[] LG_matrix = new byte[x_max* y_max * 3];

                for (int x = 0; x < x_max; x++)
                {
                    for (int y = 0; y < y_max; y++)
                    {
                        Color pixelColor = image1.GetPixel(x, y);
                        
                        LG_matrix[4 * (x + y * x_max) + 0] = pixelColor.R;
                        LG_matrix[4 * (x + y * x_max) + 1] = pixelColor.G;
                        LG_matrix[4 * (x + y * x_max) + 2] = pixelColor.B;
                        LG_matrix[4 * (x + y * x_max) + 3] = pixelColor.A;

                    }
                }
               
                label9.Text = "Image: " + selectedFileName;     

                string[] rgszArg = { "-d", "-d", "Genesys2", "-p", "1", "-m", "2" };
                IntPtr unmanagedArray = Marshal.AllocHGlobal(LG_matrix.Length);
                Marshal.Copy(LG_matrix, 0, unmanagedArray, LG_matrix.Length);
                int output_cpp = main(7, rgszArg, unmanagedArray,LG_matrix.Length);
                Marshal.FreeHGlobal(unmanagedArray);
            }
            catch (ArgumentException)
            {
                MessageBox.Show("There was an error." +
                    "Check the path to the image file.");
            }
        }*/

        public static Image Resize(Bitmap originalImage, int w, int h)
        {
            //Original Image attributes
            int originalWidth = originalImage.Width;
            int originalHeight = originalImage.Height;

            // Figure out the ratio
            double ratioX = (double)w / (double)originalWidth;
            double ratioY = (double)h / (double)originalHeight;
            // use whichever multiplier is smaller
            double ratio = ratioX < ratioY ? ratioX : ratioY;

            // now we can get the new height and width
            int newHeight = Convert.ToInt32(originalHeight * ratio);
            int newWidth = Convert.ToInt32(originalWidth * ratio);

            Bitmap thumbnail = new Bitmap(newWidth, newHeight);
            Graphics graphic = Graphics.FromImage(thumbnail);

            graphic.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.HighQualityBicubic;
            graphic.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
            graphic.PixelOffsetMode = System.Drawing.Drawing2D.PixelOffsetMode.HighQuality;
            graphic.CompositingQuality = System.Drawing.Drawing2D.CompositingQuality.HighQuality;

            graphic.Clear(Color.Transparent);
            graphic.DrawImage(originalImage, 0, 0, newWidth, newHeight);

            return thumbnail;
        }







        private void button6_Click(object sender, EventArgs e)
        {
            ParametroSerial(37, 8, 1, 0);
            using (var fbd = new FolderBrowserDialog())
            {
                DialogResult result = fbd.ShowDialog();
                fbd.Description = "Select a folder to extract to:";

                string[] files;
                if (result == DialogResult.OK && !string.IsNullOrWhiteSpace(fbd.SelectedPath))
                {
                    files = Directory.GetFiles(fbd.SelectedPath);

                    foreach (string file in files)
                    {
                        enviarImagenFPGA(""+file);
                        System.Threading.Thread.Sleep(10);
                    }
                    
                    System.Windows.Forms.MessageBox.Show("Files found: " + files.Length.ToString(), "Message");
                }
            }

            
        }

        private void enviarImagenFPGA(string selectedFileName)
        {
            try
            {
                // Set the PictureBox to display the image.
                image1 = new Bitmap(selectedFileName, true);

                //Image image12 = Resize(image1, 1280, 1024);
                //image1 = new Bitmap(image12);

                int x_max = image1.Width;
                //x_max = 1280;
                int y_max = image1.Height;
                //y_max = 1024;

                byte[] LG_matrix = new byte[x_max * y_max * 4];

                for (int x = 0; x < x_max; x++)
                {
                    for (int y = 0; y < y_max; y++)
                    {
                        Color pixelColor = image1.GetPixel(x, y);

                        LG_matrix[4 * (x + y * x_max) + 0] = pixelColor.R;
                        LG_matrix[4 * (x + y * x_max) + 1] = pixelColor.G;
                        LG_matrix[4 * (x + y * x_max) + 2] = pixelColor.B;
                        LG_matrix[4 * (x + y * x_max) + 3] = pixelColor.A;

                    }
                }

                //label9.Text = "Image: " + selectedFileName;

                string[] rgszArg = { "-d", "-d", "Genesys2", "-p", "1", "-m", "2" };
                IntPtr unmanagedArray = Marshal.AllocHGlobal(LG_matrix.Length);
                Marshal.Copy(LG_matrix, 0, unmanagedArray, LG_matrix.Length);
                int output_cpp = main(7, rgszArg, unmanagedArray, LG_matrix.Length);
                Marshal.FreeHGlobal(unmanagedArray);
            }
            catch (ArgumentException)
            {
                MessageBox.Show("There was an error." +
                    "Check the path to the image file.");
            }
        }

        private void numericUpDown14_ValueChanged(object sender, EventArgs e)
        {
            ObjetoIOP.guardarPropiedades(39, "dacA_numericUpDown14", numericUpDown14.Value.ToString());
            ParametroSerial(39, 16, (int)numericUpDown14.Value, 0);
        }

        private void numericUpDown15_ValueChanged(object sender, EventArgs e)
        {
            ObjetoIOP.guardarPropiedades(40, "dacB_numericUpDown15", numericUpDown15.Value.ToString());
            ParametroSerial(40, 16, (int)numericUpDown15.Value, 0);
        }

        private void numericUpDown16_ValueChanged(object sender, EventArgs e)
        {
            ObjetoIOP.guardarPropiedades(41, "deadTimeAPD_numericUpDown16", numericUpDown16.Value.ToString());
            ParametroSerial(41, 8, (int)numericUpDown15.Value, 0);
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            ParametroSerial(25, 8, 0, 0);
            ObjetoIOP.guardarPropiedades(29, "controlDM", "0");
        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            ParametroSerial(25, 8, 1, 0);
            ObjetoIOP.guardarPropiedades(25, "controlDM", "1");
        }

        public string[,] matrixTheory = new string[500, 2];
        void leerTeoricas()
        {
            string archivo_theory = "theory.txt";
            StreamReader sr = new StreamReader(archivo_theory);
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
                    matrixTheory[index, 0] = s0;
                    s0 = "";
                }
                else
                {
                    if ((byte)dataIn[i] == 13)
                    {
                        matrixTheory[index, 1] = s0;
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

        private void actulizarRx3(object sender, EventArgs e1)
        {
            //si quieres monitorear lo que llega de la FPGA agrega un listBox1 y listBox2
            /*listBox1.Items.Clear();
            for (int i = 0; i < 200; i++)
            {
                listBox1.Items.Add(VectorByte3[i]);
            }
            listBox2.Items.Clear();
            for (int i = 0; i < Vect_FPGAoutMem.Length; i++)
            {
                listBox2.Items.Add(Vect_FPGAoutMem[i]);
            }*/

            int index_max = 6 + N32 + N16 + 3 * dataPoints;
            label1.Text = "llego data valida";
            //compruebo que la cola del stream de data haya llegado bien
            if (Vect_FPGAoutMem[index_max] == 1 && Vect_FPGAoutMem[index_max + 1] == 254 && Vect_FPGAoutMem[index_max + 2] == 1 && Vect_FPGAoutMem[index_max + 3] == 254)
            {
                chart1.Series["Det0"].Points.Clear();
                chart2.Series["Det1"].Points.Clear();
                chart1.Series["Th0"].Points.Clear();
                chart2.Series["Th1"].Points.Clear();
                //cargar prob teoricas
                leerTeoricas();


                uint[] mascara = new uint[65000];
                uint[] ADC0 = new uint[65000];
                uint[] ADC1 = new uint[65000];
                int k = 0;
                RxString_txt = "";
                if (checkBox1.Checked == true)
                {
                    for (int i = 12; i < (index_max); i += 3)
                    {
                        mascara[k] = Vect_FPGAoutMem[i];
                        ADC0[k] = Vect_FPGAoutMem[i + 1];
                        chart1.Series["Det0"].Points.AddXY(k, ADC0[k]);
                        chart1.Series["Th0"].Points.AddXY(k, normalization * Convert.ToInt32(matrixTheory[k, 0]));
                        ADC1[k] = Vect_FPGAoutMem[i + 2];
                        chart2.Series["Det1"].Points.AddXY(k, ADC1[k]);
                        chart2.Series["Th1"].Points.AddXY(k, normalization * Convert.ToInt32(matrixTheory[k, 1]));
                        RxString_txt = RxString_txt + Convert.ToString(k) + "\t" + Convert.ToString(Vect_FPGAoutMem[6]) + "\t" + Convert.ToString(Vect_FPGAoutMem[7]) + "\t" + Convert.ToString(Vect_FPGAoutMem[8]) + "\t" + Convert.ToString(Vect_FPGAoutMem[9]) + "\t" + Convert.ToString(Vect_FPGAoutMem[10]) + "\t" + Convert.ToString(mascara[k]) + "\t" + Convert.ToString(ADC0[k]) + "\t" + Convert.ToString(ADC1[k]) + "\r\n";
                        k++;
                    }
                    StreamWriter sw = new StreamWriter(direccion_guardar2, true);
                    sw.Write(RxString_txt);
                    sw.Close();
                    RxString_txt = "";
                }
                else
                {
                    for (int i = 12; i < (index_max); i += 3)
                    {
                        mascara[k] = Vect_FPGAoutMem[i];
                        ADC0[k] = Vect_FPGAoutMem[i + 1];
                        chart1.Series["Det0"].Points.AddXY(k, ADC0[k]);
                        chart1.Series["Th0"].Points.AddXY(k, normalization * Convert.ToInt32(matrixTheory[k,0]));
                        ADC1[k] = Vect_FPGAoutMem[i + 2];
                        chart2.Series["Det1"].Points.AddXY(k, ADC1[k]);
                        chart2.Series["Th1"].Points.AddXY(k, normalization * Convert.ToInt32(matrixTheory[k, 1]));
                        //chart1.Series["Threshold"].Points.AddXY(k, threshold);
                        k++;
                    }
                    //chart1.ChartAreas[0].AxisX.IsMarginVisible = false;
                    //chart1.ChartAreas[0].AxisY.IsMarginVisible = false;
                }
                var maxADC = new int[] { (int)ADC0.Max(), (int)ADC1.Max() };
                /*if (maxADC.Max() > maxChartDet)
                {
                    maxChartDet = (int)((decimal)1.1 * maxADC.Max());
                }
                chart1.ChartAreas[0].AxisY.Maximum = maxChartDet;
                */
                ParametroSerial(22, 8, 1, 0);
            }



        }

        private void numericUpDown8_ValueChanged_1(object sender, EventArgs e)
        {
            dataPoints = (int)numericUpDown8.Value;
            ObjetoIOP.guardarPropiedades(42, "dataPoints", numericUpDown8.Value.ToString());
            ParametroSerial(42, 16, (int)numericUpDown8.Value, 0);
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void radioButton4_CheckedChanged(object sender, EventArgs e)
        {
            laserControl();
        }

        private void laserControl()
        {
            if (radioButton3.Checked) { ParametroSerial(44, 8, 1, 0); }
            if (radioButton4.Checked) { ParametroSerial(44, 8, 0, 0); ParametroSerial(43, 8, 1, 0); }
            if (radioButton5.Checked) { ParametroSerial(44, 8, 0, 0); ParametroSerial(43, 8, 0, 0); }
        }

        private void radioButton5_CheckedChanged(object sender, EventArgs e)
        {
            laserControl();
        }

        private void radioButton3_CheckedChanged(object sender, EventArgs e)
        {
            laserControl();
        }

        private void label9_Click(object sender, EventArgs e)
        {

        }

        int normalization = 100;
        private void numericUpDown9_ValueChanged(object sender, EventArgs e)
        {
            normalization = (int)numericUpDown9.Value;
            ObjetoIOP.guardarPropiedades(45, "Norm", numericUpDown9.Value.ToString());
        }

        private void radioButton6_CheckedChanged(object sender, EventArgs e)
        {
            ParametroSerial(46, 8, 1, 0);
            ObjetoIOP.guardarPropiedades(46, "AliceBob", "Alice");
        }

        private void radioButton7_CheckedChanged(object sender, EventArgs e)
        {
            ParametroSerial(46, 8, 0, 0);
            ObjetoIOP.guardarPropiedades(46, "AliceBob", "Bob");
        }

        private void button2_Click(object sender, EventArgs e)
        {

        }

        private void buttonSetFreq1_ValueChanged(object sender, EventArgs e)
        {
            int freq_1_FPGA = (int)(numericUpDown7.Value / 2 / buttonSetFreq1.Value);
            ObjetoIOP.guardarPropiedades(50, "freq_1_numericUpDown", buttonSetFreq1.Value.ToString());
            label1.Text = Convert.ToString(freq_1_FPGA);
            ParametroSerial(50, 32, freq_1_FPGA, 0);
        }

        private void buttonSetDelay1_ValueChanged(object sender, EventArgs e)
        {
            int delay_1_FPGA = (int)(buttonSetDelay1.Value *2* numericUpDown7.Value / 1000);
            ObjetoIOP.guardarPropiedades(51, "delay_1_numericUpDown", buttonSetDelay1.Value.ToString());
            label1.Text = Convert.ToString(delay_1_FPGA);
            ParametroSerial(51, 32, delay_1_FPGA, 0);
        }

        private void buttonSetWidth1_ValueChanged(object sender, EventArgs e)
        {
            int width_1_FPGA = (int)(buttonSetWidth1.Value *2* numericUpDown7.Value / 1000);
            ObjetoIOP.guardarPropiedades(52, "width_1_numericUpDown", buttonSetWidth1.Value.ToString());
            label1.Text = Convert.ToString(width_1_FPGA);
            ParametroSerial(52, 32, width_1_FPGA, 0);
        }

        private void buttonSetFreq2_ValueChanged(object sender, EventArgs e)
        {
            int freq_2_FPGA = (int)(numericUpDown7.Value / 2 / buttonSetFreq2.Value);
            ObjetoIOP.guardarPropiedades(53, "freq_2_numericUpDown", buttonSetFreq2.Value.ToString());
            label1.Text = Convert.ToString(freq_2_FPGA);
            ParametroSerial(53, 32, freq_2_FPGA, 0);
        }

        private void buttonSetDelay2_ValueChanged(object sender, EventArgs e)
        {
            int delay_2_FPGA = (int)(buttonSetDelay2.Value *2* numericUpDown7.Value / 1000);
            ObjetoIOP.guardarPropiedades(54, "delay_2_numericUpDown", buttonSetDelay2.Value.ToString());
            label1.Text = Convert.ToString(delay_2_FPGA);
            ParametroSerial(54, 32, delay_2_FPGA, 0);
        }

        private void buttonSetWidth2_ValueChanged(object sender, EventArgs e)
        {
            int width_2_FPGA = (int)(buttonSetWidth2.Value *2* numericUpDown7.Value / 1000);
            ObjetoIOP.guardarPropiedades(55, "width_2_numericUpDown", buttonSetWidth2.Value.ToString());
            label1.Text = Convert.ToString(width_2_FPGA);
            ParametroSerial(55, 32, width_2_FPGA, 0);
        }

        private void buttonSetFreq3_ValueChanged(object sender, EventArgs e)
        {
            int freq_3_FPGA = (int)(numericUpDown7.Value / 2 / buttonSetFreq3.Value);
            ObjetoIOP.guardarPropiedades(56, "freq_3_numericUpDown", buttonSetFreq3.Value.ToString());
            label1.Text = Convert.ToString(freq_3_FPGA);
            ParametroSerial(56, 32, freq_3_FPGA, 0);
        }

        private void buttonSetDelay3_ValueChanged(object sender, EventArgs e)
        {
            int delay_3_FPGA = (int)(buttonSetDelay3.Value *2* numericUpDown7.Value / 1000);
            ObjetoIOP.guardarPropiedades(57, "delay_3_numericUpDown", buttonSetDelay3.Value.ToString());
            label1.Text = Convert.ToString(delay_3_FPGA);
            ParametroSerial(57, 32, delay_3_FPGA, 0);
        }

        private void buttonSetWidth3_ValueChanged(object sender, EventArgs e)
        {
            int width_3_FPGA = (int)(buttonSetWidth3.Value * 2 * numericUpDown7.Value / 1000);
            ObjetoIOP.guardarPropiedades(58, "width_3_numericUpDown", buttonSetWidth3.Value.ToString());
            label1.Text = Convert.ToString(width_3_FPGA);
            ParametroSerial(58, 32, width_3_FPGA, 0);
        }

        private void buttonSetFreq4_ValueChanged(object sender, EventArgs e)
        {
            int freq_4_FPGA = (int)(numericUpDown7.Value / 2 / buttonSetFreq4.Value);
            ObjetoIOP.guardarPropiedades(59, "freq_4_numericUpDown", buttonSetFreq4.Value.ToString());
            label1.Text = Convert.ToString(freq_4_FPGA);
            ParametroSerial(59, 32, freq_4_FPGA, 0);
        }

        private void buttonSetDelay4_ValueChanged(object sender, EventArgs e)
        {
            int delay_4_FPGA = (int)(buttonSetDelay4.Value * numericUpDown7.Value / 1000);
            ObjetoIOP.guardarPropiedades(60, "delay_4_numericUpDown", buttonSetDelay4.Value.ToString());
            label1.Text = Convert.ToString(delay_4_FPGA);
            ParametroSerial(60, 32, delay_4_FPGA, 0);
        }

        private void buttonSetWidth4_ValueChanged(object sender, EventArgs e)
        {
            int width_4_FPGA = (int)(buttonSetWidth4.Value * numericUpDown7.Value / 1000);
            ObjetoIOP.guardarPropiedades(61, "width_4_numericUpDown", buttonSetWidth4.Value.ToString());
            label1.Text = Convert.ToString(width_4_FPGA);
            ParametroSerial(61, 32, width_4_FPGA, 0);
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label10_Click(object sender, EventArgs e)
        {
            
        }

        private void label17_Click(object sender, EventArgs e)
        {

        }

        private void label11_Click(object sender, EventArgs e)
        {

        }
    }
}
