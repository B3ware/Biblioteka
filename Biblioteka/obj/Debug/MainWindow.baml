   M S B A M L   `   `   `  ����E  ABiblioteka, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Biblioteka
Biblioteka  5   	       Biblioteka.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Biblioteka     5   	   -   5          � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)    � 	Resources 5	      "   Biblioteka.BibliotekaDataSet   bibliotekaDataSet  czytelnicyViewSource �� Source �� Source��%[   &	        &	      7     5
   
   6"   �� 5   
    6<   �� *
Czytelnicy+8   5      .��5      �  � DataContext# [ 6    J� OpacityMask �	#CCFFFFFF � ColumnDefinitions 5   
   �� 5      $
��157* �6   �� 5      $
��107* �6   ��5   
   �� 5       �� ImageSource$ 	books.jpg��6    � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $��* �6   .+�5   
   �� -   5        	 ��Name$		 log��5      $��	Logowanie��6   $
��Left=�61   $��
240,10,0,0q�6L   $��2��6`   $	��Top=�6m   $��72(�6�   $��Calibri)�6�   ���	#FFFF7400$��2��6�   $
��Bold"�6�   �� 5   
   -   5        $	 login��5      $��Login��6   $
��Left=�6/   $��270,174,0,0q�6J   $��2��6_   $	��Top=�6l   $��20(�6�   ���	#FFFF7400$
��Bold"�6�   �� 5   
   $��Hasło��6   $
��Left=�6    $��270,216,0,0q�6;   $��2��6P   $	��Top=�6]   $��20(�6u   ���	#FFFF7400$
��Bold"�6�   �� 5   
   -   5        
 ��Name$
 txtLogin��5      $
��Left=�6$   $��26��6?   $��349,185,0,0q�6K   $��2��6`    �� TextWrapping$
 Wrap=�6m   $	��Top=�6�   $	��120��6�   �� 5   
   -   5         ��Name$ button��5      $��Zaloguj��6!   $
��Left=�63   $��359,319,0,0q�6N   $��2��6c   $	��Top=�6p   $	��112��6�   $��41��6�   ���	#E5FF7400 J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5       5"      �� 5#   
   -   5         ��Name$ 	pracownik��5#      $��	Pracownik��6&   $
��Left=�6:   $��373,271,0,0q�6U   $��2��6j   $	��Top=�6w   �� 5$   
   -   5        $ zakoncz��5$      $��Wyjdź��6"   $
��Left=�62   $��
44,376,0,0q�6M   $��2��6a   $	��Top=�6n   $��75��6�   ���	#E5FF7400 5%        5&      5(      �� 5)   
   -   5        $
 nowy��5)      $'��!Nie masz konta? Zarejestruj się!��6   $
��Left=�6J   $��323,381,0,0q�6e   $��2��6z   $	��Top=�6�   $	��187��6�   $��28��6�   $��2��6�   
���  ��$
��Bold"�6	  ��6�   Z� ��6�   Z� 6  G� 5*   
   -	   5         G�Name$ txtHaslo��5*      $
��Left=�6(   $��349,228,0,0q�6C   $��2��6X   $	��Top=�6e   $	��120��6}   $��25��6�   5.      5/      