using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
    /// Widok użytkownika, gdzie może zobaczyć jakie książki znajdują się w bazie
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

        private void Zarezerwuj_Click(object sender, RoutedEventArgs e)
        {
            
            DateTime.Now.ToString("yyyy-MM-dd");
            string conString = "Data Source=DESKTOP-H9HITU2;Initial Catalog=Biblioteka;Integrated Security=True";
            SqlConnection con = new SqlConnection(conString);
            if (con.State == System.Data.ConnectionState.Closed)
                con.Open();
            string query = "Insert into Wypozyczenia(id_czytelnik,id_ksiazki,Data_wypozyczenia,id_pracownik_wypozyczenie,Data_oddania,id_pracownik_oddanie) values ('"+id.Text+"'," +
                "'" + id_ksiazkiComboBox.Text + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "',2,NULL,NULL)";
            SqlCommand sqlCmd = new SqlCommand(query, con);
            sqlCmd.ExecuteNonQuery();
        }
    }
}
