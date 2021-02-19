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
    /// Panel administracyjny do usuwania użytkowników oraz oddawania książek
    /// </summary>
    public partial class Panel : Window
    {
        public Panel()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            Biblioteka.BibliotekaDataSet bibliotekaDataSet = ((Biblioteka.BibliotekaDataSet)(this.FindResource("bibliotekaDataSet")));
            // Załaduj dane do tabeli Czytelnicy. Możesz modyfikować ten kod w razie potrzeby.
            Biblioteka.BibliotekaDataSetTableAdapters.CzytelnicyTableAdapter bibliotekaDataSetCzytelnicyTableAdapter = new Biblioteka.BibliotekaDataSetTableAdapters.CzytelnicyTableAdapter();
            bibliotekaDataSetCzytelnicyTableAdapter.Fill(bibliotekaDataSet.Czytelnicy);
            System.Windows.Data.CollectionViewSource czytelnicyViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("czytelnicyViewSource")));
            czytelnicyViewSource.View.MoveCurrentToFirst();
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
        }

        private void usun_Click(object sender, RoutedEventArgs e)
        {
            string conString = "Data Source=DESKTOP-H9HITU2;Initial Catalog=Biblioteka;Integrated Security=True";
            SqlConnection con = new SqlConnection(conString);
            if (con.State == System.Data.ConnectionState.Closed)
                con.Open();
            string query = "Delete from Wypozyczenia where id_czytelnik='" + id_czytelnikComboBox.Text + "'";
            SqlCommand sqlCmd = new SqlCommand(query, con);
            sqlCmd.ExecuteNonQuery();
            string query1 = "Delete from Czytelnicy where id_czytelnik='"+id_czytelnikComboBox.Text+"'";
            SqlCommand sqlCmd1 = new SqlCommand(query1, con);
            sqlCmd1.ExecuteNonQuery();
            MessageBox.Show("Pomyślnie usunięto użytkownika");
            

        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Menu menu = new Menu();
            menu.Show();
            this.Close();
        }

        private void oddaj(object sender, RoutedEventArgs e)
        {
            string conString = "Data Source=DESKTOP-H9HITU2;Initial Catalog=Biblioteka;Integrated Security=True";
            SqlConnection con = new SqlConnection(conString);
            if (con.State == System.Data.ConnectionState.Closed)
                con.Open();
            string query = "Update wypozyczenia set Data_oddania='"+ DateTime.Now.ToString("yyyy-MM-dd") + "', id_pracownik_oddanie='"+id_prac.Text+"' where id_wypozyczenia='"+id_wypozyczeniaComboBox.Text+"'";
            SqlCommand sqlCmd = new SqlCommand(query, con);
            sqlCmd.ExecuteNonQuery();
            MessageBox.Show("Pomyślnie oddano książkę");

        }
    }
}
