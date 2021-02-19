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
    /// Panel administratora z wyświetloną bazą książek lub wypożyczeń
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
            // Załaduj dane do tabeli Wypozyczenia. Możesz modyfikować ten kod w razie potrzeby.
            Biblioteka.BibliotekaDataSetTableAdapters.WypozyczeniaTableAdapter bibliotekaDataSetWypozyczeniaTableAdapter = new Biblioteka.BibliotekaDataSetTableAdapters.WypozyczeniaTableAdapter();
            bibliotekaDataSetWypozyczeniaTableAdapter.Fill(bibliotekaDataSet.Wypozyczenia);
            System.Windows.Data.CollectionViewSource wypozyczeniaViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("wypozyczeniaViewSource")));
            wypozyczeniaViewSource.View.MoveCurrentToFirst();
            // Załaduj dane do tabeli Wydawnictwa. Możesz modyfikować ten kod w razie potrzeby.
            Biblioteka.BibliotekaDataSetTableAdapters.WydawnictwaTableAdapter bibliotekaDataSetWydawnictwaTableAdapter = new Biblioteka.BibliotekaDataSetTableAdapters.WydawnictwaTableAdapter();
            bibliotekaDataSetWydawnictwaTableAdapter.Fill(bibliotekaDataSet.Wydawnictwa);
            System.Windows.Data.CollectionViewSource wydawnictwaViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("wydawnictwaViewSource")));
            wydawnictwaViewSource.View.MoveCurrentToFirst();
        }

        private void powrot_Click(object sender, RoutedEventArgs e)
        {
            MainWindow main = new MainWindow();
            main.Show();
            this.Close();
        }

        private void wlacz(object sender, RoutedEventArgs e)
        {
            ksiazkiDataGrid.Visibility = Visibility.Hidden;
            wypozyczeniaDataGrid.Visibility = Visibility.Visible;
        }
        private void wylacz(object sender, RoutedEventArgs e)
        {
            ksiazkiDataGrid.Visibility = Visibility.Visible;
            wypozyczeniaDataGrid.Visibility = Visibility.Hidden;
        }

        private void edytuj_Click(object sender, RoutedEventArgs e)
        {
            Panel panel = new Panel();
            panel.Show();
            this.Close();
        }
    }
}
