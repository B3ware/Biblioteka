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

namespace Biblioteka
{
    /// <summary>
    /// Logika interakcji dla klasy Menu.xaml
    /// </summary>
    public partial class Menu : Window
    {
        public Menu()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            Biblioteka.BibliotekaDataSet bibliotekaDataSet = ((Biblioteka.BibliotekaDataSet)(this.FindResource("bibliotekaDataSet")));
            // Załaduj dane do tabeli Ksiazki. Możesz modyfikować ten kod w razie potrzeby.
            Biblioteka.BibliotekaDataSetTableAdapters.KsiazkiTableAdapter bibliotekaDataSetKsiazkiTableAdapter = new Biblioteka.BibliotekaDataSetTableAdapters.KsiazkiTableAdapter();
            bibliotekaDataSetKsiazkiTableAdapter.Fill(bibliotekaDataSet.Ksiazki);
            System.Windows.Data.CollectionViewSource ksiazkiViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("ksiazkiViewSource")));
            ksiazkiViewSource.View.MoveCurrentToFirst();
        }

        private void powrot_Click(object sender, RoutedEventArgs e)
        {
            MainWindow main = new MainWindow();
            main.Show();
            this.Close();
        }

        private void lista_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
