   M S B A M L   `   `   `  ����E  ABiblioteka, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Biblioteka
Biblioteka  5   	       Biblioteka.MenuCzytelnik   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Biblioteka     5   	   -   5          � Title$  MenuCzytelnik��5   	   $	��450��6   $	��800��6,    � 	Resources 5	      "   Biblioteka.BibliotekaDataSet   bibliotekaDataSet  ksiazkiViewSource �� Source �� Source  wydawnictwaViewSource  kategorieViewSource  autorzyViewSource��%  &	        &	      7   &	 @     7   &	 q     7   &	 �     7     5
   
   6"   �� 5   
    69   �� *	Ksiazki+8   �� 5   
    6=   �� *Wydawnictwa+8   �� 5   
    6;   �� *	Kategorie+8   �� 5   
    69   �� *	Autorzy+8   5      .��5      �  J� OpacityMask �	#CCFFFFFF � DataContext# [ 6#   ��5   
   �� 5       �� ImageSource$ 	books.jpg��6   .+�5   
   �� $��	Książki��6   $
��Left=�6"   $��	44,10,0,0q�6=   $	��Top=�6P   ���	#E5FF7400$
��Bold"�6   $��36(�6�   $	��183��6�   � 5   
   -   5         �Name$ grid2��5      # [ 6   $
��Left=�6S   $��473,160,0,0q�6n   $	��Top=�6�    � ColumnDefinitions 5      �� 5      $
��Auto �6#   �� 5      $
��Auto �6#   	 � RowDefinitions	 5      �� 5      $
��Auto �6    5      � 5   
   -   5        $ grid4��5      $
��Left=�6   $��
67,147,0,0q�69   $	��Top=�6M    5      �� 5       $
��Auto �6#   �� 5!      $
��Auto �6#   	 5#      �� 5$      $
��Auto �6    5&      � 5'   
   -   5        $ grid5��5'      # [ 6   $
��Left=�6S   $��
18,184,0,0q�6n   $	��Top=�6�    5(      �� 5)      $
��Auto �6#   �� 5*      $
��Auto �6#   	 5,      �� 5-      $
��Auto �6    5/      � 50   
   -   5        $ grid7��50      # [ 6   $
��Left=�6Q   $��
56,209,0,0q�6l   $	��Top=�6�    51      �� 52      $
��Auto �6#   �� 53      $
��Auto �6#   	 55      �� 56      $
��Auto �6    58      � 59   
   -   5        $ grid1��59      $
��Left=�6   $��	35,73,0,0q�69   $	��Top=�6L    5:      �� 5;      $
��Auto �6#   �� 5<      $
��Auto �6#   	 5>      �� 5?      $
��Auto �6    .+�5A      �� $��id ksiazki:��6   $��0��6*   $
��Left=�6:   $��	-15,1,0,5q�6U   $��0��6h   $��Center=�6u   ���	#FFFF74006�   �� 5B      -   5        
 ��Name$
 id_ksiazkiComboBox��5B      $��1��63    �� DisplayMemberPath$ 
id_ksiazki��6C   $
��Left=�6b   $
��Auto��6}   $��
26,5,-20,5q�6�   $��0��6�   $��Center=�6�   $	��120��6�   ��6�   �� ��5C      �� 5D      .R�5E      $� 5F      5H      5I      � 5J   
   -   5        $ grid3��5J      $
��Left=�6   $��
56,105,0,0q�69   $	��Top=�6M    5K      �� 5L      $
��Auto �6#   �� 5M      $
��Auto �6#   	 5O      �� 5P      $
��Auto �6    .+�5R      �� $��Tytuł:��6   $��0��6%   $
��Left=�65   $��	-36,2,0,4q�6P   $��0��6c   $��Center=�6p   ���	#FFFF74006�   �� 5S      -	   5         ��Name$ tytulTextBox��5S      $��1��6,   $
��Left=�6<   $��24��6W   $��
47,4,-41,4q�6c   $��0��6w   $��Center=�6�   $	��120��6�   ��6�   �� *Tytul+ �� Mode$ TwoWay=� �� NotifyOnValidationError .  �� ValidatesOnExceptions . 6�   5T      � 5U   
   -
   5        $ grid6��5U      $
��Left=�6   $��
57,137,0,0q�69   $	��Top=�6M    5V      �� 5W      $
��Auto �6#   �� 5X      $
��Auto �6#   	 5Z      �� 5[      $
��Auto �6    .+�5]      �� $��Opis:��6   $��0��6$   $
��Left=�64   $��	-38,4,0,0q�6O   $��0��6b   $��Center=�6o   $��2��6�   $��61��6�   $��28��6�   ���	#FFFF74006�   �� 5^      -   5        $ opisTextBox��5^      $��1��6+   $
��Left=�6;   $��24��6V   $��
48,4,-42,4q�6b   $��0��6v   $��Center=�6�   $	��120��6�   ��6�   �� *Opis+$ TwoWay=� .  . 6�   5_      � 5`   
   -   5        $ grid8��5`      # [ 6   $
��Left=�6O   $��
60,169,0,0q�6j   $	��Top=�6~    5a      �� 5b      $
��Auto �6#   �� 5c      $
��Auto �6#   	 5e      �� 5f      $
��Auto �6    .+�5h      �� $��Autor��6   $��0��6$   $
��Left=�64   $��	-40,4,0,2q�6O   $��0��6b   $��Center=�6o   ���	#FFFF74006�   �� 5i      -   5        $ imieTextBox��5i      $��1��6+   $
��Left=�6;   $��22��6V   $��
45,4,-40,6q�6b   $��0��6v   $��Center=�6�   $	��120��6�   ��6�   �� *Imie+$ TwoWay=� .  . 6�   5j      � 5k   
   -   5        $ grid9��5k      # [ 6   $
��Left=�6O   $��
32,201,0,0q�6j   $	��Top=�6~    5l      �� 5m      $
��Auto �6#   �� 5n      $
��Auto �6#   	 5p      �� 5q      $
��Auto �6    .+�5s      �� $�� ��6   $��0��6   $
��Left=�6/   $��3q�6J   $��0��6U   $	��Top=�6b   �� 5t      -   5        $ nazwiskoTextBox��5t      $��1��6/   $
��Left=�6?   $��24��6Z   $��
57,2,-51,6q�6f   $��0��6z   $��Center=�6�   $	��120��6  ��6�   �� *
Nazwisko+$ TwoWay=� .  . 6  5u      � 5v   
   -   5        $ grid10��5v      # [ 6   $
��Left=�6R   $��
47,233,0,0q�6m   $	��Top=�6�    5w      �� 5x      $
��Auto �6#   �� 5y      $
��Auto �6#   	 5{      �� 5|      $
��Auto �6    .+�5~      �� $��
Kategoria:��6   $��0��6)   $
��Left=�69   $��	-31,3,0,3q�6T   $��0��6g   $	��Top=�6t   $��97��6�   ���	#FFFF74006�   �� 5      -   5        $ nazwaTextBox��5      $��24��6,   $��57,3,-111,5q�68   $��0��6M   $��Center=�6�   $��2��6�   ��6Z   �� *Nazwa+$ TwoWay=� .  . 6�   5�      � 5�   
   -   5        $ grid12��5�      $
��Left=�6   $��
13,297,0,0q�6:   $	��Top=�6N    5�      �� 5�      $
��Auto �6#   �� 5�      $
��Auto �6#   	 5�      �� 5�      $
��Auto �6    .+�5�      �� $��Rok wydania:��6   $��0��6+   $
��Left=�6;   $��3q�6V   $��0��6a   $	��Top=�6n   ���	#00000000���	#FFFF74006�   �� 5�      -   5        $ rok_WydaniaTextBox��5�      $��1��62   $
��Left=�6B   $��24��6]   $��6,0,0,8q�6i   $��0��6z   $��Center=�6�   $	��120��6  ��6�   �� *Rok_Wydania+$ TwoWay=� .  . 6  5�      � 5�   
   -   5        $ grid11��5�      # [ 6   $
��Left=�6T   $��
47,265,0,0q�6o   $	��Top=�6�    5�      �� 5�      $
��Auto �6#   �� 5�      $
��Auto �6#   	 5�      �� 5�      $
��Auto �6    .+�5�      �� $��Wydawnictwo:��6   $��0��6+   $
��Left=�6;   $��	-32,3,0,3q�6V   $��0��6i   $	��Top=�6v   $	��121��6�   ���	#FFFF74006�   �� 5�      -   5        $ nazwaTextBox1��5�      $
��Left=�6-   $��24��6H   $��57,2,0,6q�6T   $��0��6f   $��Center=�6�   $	��120��6�   $��2��6�   ��6s   �� *Nazwa+$ TwoWay=� .  . 6�   5�      � 5�   
   -   5        $ grid13��5�      $
��Left=�6   $��
14,329,0,0q�6:   $	��Top=�6N    5�      �� 5�      $
��Auto �6#   �� 5�      $
��Auto �6#   	 5�      �� 5�      $
��Auto �6    .+�5�      �� $��ISBN:��6   $��0��6$   $
��Left=�64   $��3q�6O   $��0��6Z   $��Center=�6g   ���	#00000000���	#FFFF74006�   �� 5�      -   5        $ iSBNTextBox��5�      $��1��6+   $
��Left=�6;   $��24��6V   $��
47,0,-41,8q�6b   $��0��6v   $��Center=�6�   $	��120��6�   ��6�   �� *ISBN+$ TwoWay=� .  . 6�   5�      �� 5�   
   -   5         ��Name$ wyloguj��5�      $��Wyloguj��6"   $
��Left=�64   $��
18,378,0,0q�6O   $	��Top=�6c   $��75��6{   ���	#E5FF7400 J� Effect 5�      3  -System.Windows.Media.Effects.DropShadowEffect  5�      5�      �� 5�   
   -   5        $ 
Zarezerwuj��5�      $��Zarezerwuj online��6%   $
��Left=�6A   $��52��6\   $��295,309,0,0q�6h   $	��Top=�6}   $	��125��6�   ���	#E5FF7400 5�        5�      5�      �� 5�   
   $	��ID:��6   $
��Left=�6   $��295,278,0,0q�69   $	��Top=�6N   ���	#FFFF7400$
��Bold"�6}   �� 5�   
   -   5        $ id��5�      $
��Left=�6   $��23��69   $��326,281,0,0q�6E    �� TextWrapping$
 Wrap=�6Z   $	��Top=�6n   $��94��6�   ���	#7FFFFFFF6�   5�      5�      