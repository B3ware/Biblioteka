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
    /// Logika interakcji dla klasy MenuCzytelnik.xaml
    /// </summary>
    public partial class MenuCzytelnik : Window
    {
        public MenuCzytelnik()
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
            // Załaduj dane do tabeli Wydawnictwa. Możesz modyfikować ten kod w razie potrzeby.
            Biblioteka.BibliotekaDataSetTableAdapters.WydawnictwaTableAdapter bibliotekaDataSetWydawnictwaTableAdapter = new Biblioteka.BibliotekaDataSetTableAdapters.WydawnictwaTableAdapter();
            bibliotekaDataSetWydawnictwaTableAdapter.Fill(bibliotekaDataSet.Wydawnictwa);
            System.Windows.Data.CollectionViewSource wydawnictwaViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("wydawnictwaViewSource")));
            wydawnictwaViewSource.View.MoveCurrentToFirst();
            // Załaduj dane do tabeli Kategorie. Możesz modyfikować ten kod w razie potrzeby.
            Biblioteka.BibliotekaDataSetTableAdapters.KategorieTableAdapter bibliotekaDataSetKategorieTableAdapter = new Biblioteka.BibliotekaDataSetTableAdapters.KategorieTableAdapter();
            bibliotekaDataSetKategorieTableAdapter.Fill(bibliotekaDataSet.Kategorie);
            System.Windows.Data.CollectionViewSource kategorieViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("kategorieViewSource")));
            kategorieViewSource.View.MoveCurrentToFirst();
            // Załaduj dane do tabeli Autorzy. Możesz modyfikować ten kod w razie potrzeby.
            Biblioteka.BibliotekaDataSetTableAdapters.AutorzyTableAdapter bibliotekaDataSetAutorzyTableAdapter = new Biblioteka.BibliotekaDataSetTableAdapters.AutorzyTableAdapter();
            bibliotekaDataSetAutorzyTableAdapter.Fill(bibliotekaDataSet.Autorzy);
            System.Windows.Data.CollectionViewSource autorzyViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("autorzyViewSource")));
            autorzyViewSource.View.MoveCurrentToFirst();
        }

        private void wyloguj_Click(object sender, RoutedEventArgs e)
        {
            MainWindow main = new MainWindow();
            main.Show();
            this.Close();
        }
    }
}
