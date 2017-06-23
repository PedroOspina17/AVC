using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using AVC.ABase.Business.ViewModel;


namespace AVC.ABase.WPF
{
    /// <summary>
    /// Interaction logic for Customer.xaml
    /// </summary>
    public partial class Customer : Window
    {
        public Customer()
        {
            InitializeComponent();
        }

        private static AVC.ABase.Business.Model.ABaseEntities db = new AVC.ABase.Business.Model.ABaseEntities();
        CustomerViewModel oCustomer = new CustomerViewModel(db);
        private void wCustomers_Loaded(object sender, RoutedEventArgs e)
        {
            try
            {                
                this.DataContext = oCustomer;

            }
            catch (Exception ex)
            {

                throw;
            }

        }
        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            //oCustomer.FirstName = "Prueba";
            oCustomer.Save();
        }

        private void DataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

            CustomerViewModel oCustomerTmp = ((DataGrid)sender).SelectedItem as CustomerViewModel;
            //oCustomer.FirstName = oCustomerTmp.FirstName;
            //oCustomer.LastName = oCustomerTmp.LastName;
            if (oCustomerTmp != null)
                oCustomer.Refresh(oCustomerTmp);

            //oCustomer.Refresh();
        }

        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            oCustomer.Delete();
        }

        private void btnCancel_Click(object sender, RoutedEventArgs e)
        {
            oCustomer.Clean();
        }

    }
}
