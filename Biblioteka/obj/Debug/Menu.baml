   M S B A M L   `   `   `  ����E  ABiblioteka, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Biblioteka
Biblioteka  5   	       Biblioteka.Menu   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Biblioteka     5   	   -   5          � Title$
  Menu��5   	   $	��450��6   $	��800��6#    � 	Resources 5	      "   Biblioteka.BibliotekaDataSet   bibliotekaDataSet  ksiazkiViewSource �� Source �� Source  wypozyczeniaViewSource  wydawnictwaViewSource��%�   &	        &	      7   &	 @     7   &	 r     7     5
   
   6"   �� 5   
    69   �� *	Ksiazki+8   �� 5   
    6>   �� *Wypozyczenia+8   �� 5   
    6=   �� *Wydawnictwa+8   5      .��5      �  � DataContext# [ 6    J� OpacityMask �	#CCFFFFFF J� Effect 5   
   3  -System.Windows.Media.Effects.DropShadowEffect  5      ��5   
   �� 5       �� ImageSource$ 	books.jpg��6   .+�5   
   d� -   5         d�Name$ lista��5      $ ��Zobacz listę wypożyczeń��6&   $
��Left=�6H   $��188,289,0,0q�6c   $	��Top=�6x   $	��140��6�   $��49��6�   ���	#E5FF7400 5        5      5      �� 5   
   -   5        	 ��Name$	 edytuj��5      $��Edytuj Dane��6!   $
��Left=�67   $��482,289,0,0q�6R   $	��Top=�6g   $	��140��6   $��49��6�   ���	#E5FF7400 5        5      5       �� 5!   
   -   5        $	 powrot��5!      $��Powrót��6!   $
��Left=�62   $��
34,375,0,0q�6M   $	��Top=�6a   $��75��6y   ���	#E5FF7400 5"        5#      5%      &   System.Windows.Controls.DataGrid  5&   
   -   5        
  Name$
 wypozyczeniaDataGrid��5&         AutoGenerateColumns .     EnableRowVirtualization . $��146,30,146,159q�6�      RowDetailsVisibilityMode$ VisibleWhenSelected=�6�   ���	#7FF0F0F0$y�Hidden=�6  ��6l   �� # [    Columns 5'      0  *System.Windows.Controls.DataGridTextColumn  5(      -   5        id_wypozyczeniaColumn��,  &System.Windows.Controls.DataGridColumn   Header$ id wypozyczenia��5(   h      Width5  /System.Windows.Controls.DataGridLengthConverter$ SizeToHeader 6�   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6D   �� *id_wypozyczenia+6�     5)      -   5        id_czytelnikColumn��$ id czytelnik��5)   b   $ SizeToHeader 6x    6A   �� *id_czytelnik+6x     5*      -   5        id_ksiazkiColumn��$ 
id ksiazki��5*   ^   $ SizeToHeader 6r    6?   �� *
id_ksiazki+6r   4  .System.Windows.Controls.DataGridTemplateColumn  5+      -	   5        data_wypozyczeniaColumn��$ Data wypozyczenia��5+   J   $ SizeToHeader 6e      CellTemplate 5,      �� 5-      .R�5.      (	  "System.Windows.Controls.DatePicker	   	  SelectedDate 6)   �� *Data_wypozyczenia+ �� Mode$ TwoWay=� �� NotifyOnValidationError .  �� ValidatesOnExceptions . 5/      51        52      -
   5        #id_pracownik_wypozyczenieColumn��$ id pracownik wypozyczenie��52   |   $ SizeToHeader 6�    6N   �� *id_pracownik_wypozyczenie+6�     53      -   5        data_oddaniaColumn��$ Data oddania��53   E   $ SizeToHeader 6[    54      �� 55      .R�56      	   6)   �� *Data_oddania+$ TwoWay=� .  . 57      59        5:      -   5        id_pracownik_oddanieColumn��$ id pracownik oddanie��5:   r   $ SizeToHeader 6�    6I   �� *id_pracownik_oddanie+6�   5<        5=   
   -   5        $
 ksiazkiDataGrid��5=       .   . $��148,30,146,159q�6   $ VisibleWhenSelected=�6�   ���	#7FF0F0F0��6g   ��  5>        5?      -   5        id_ksiazkiColumn1��$ 
id ksiazki��5?   _   $ SizeToHeader 6s    6@   �� *
id_ksiazki+6s     5@      -   5        
iSBNColumn��$
 ISBN��5@   R   $ SizeToHeader 6`    69   �� *ISBN+6`     5A      -   5        tytulColumn��$ Tytul��5A   T   $ SizeToHeader 6c    6:   �� *Tytul+6c     5B      -   5        
opisColumn��$
 Opis��5B   R   $ SizeToHeader 6`    69   �� *Opis+6`     5C      -   5        id_kategoriaColumn��$ id kategoria��5C   b   $ SizeToHeader 6x    6A   �� *id_kategoria+6x     5D      -   5        id_autorColumn��$ id autor��5D   Z   $ SizeToHeader 6l    6=   �� *
id_autor+6l     5E      -   5        id_wydawnictwaColumn��$ id wydawnictwa��5E   f   $ SizeToHeader 6~    6C   �� *id_wydawnictwa+6~     5F      -   5        rok_WydaniaColumn��$ Rok Wydania��5F   `   $ SizeToHeader 6u    6@   �� *Rok_Wydania+6u   5H      5J      5K      