   M S B A M L   `   `   `  ����D  @WPFTrader, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:WPFTrader	WPFTrader  5   	       WPFTrader.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:WPFTrader     5   	   -   5          � Title$  
MainWindow��5   	   $	��650��6   $
��1000��6)   .��5	      �  � RowDefinitions 5
   
   �� 5      $	��100 �6   6+   �� 5      $��20 �6   6*   �� 5      6   �� 5      $��20 �6   6*   �� 5      6    � ColumnDefinitions 5   
   �� 5      $	��200 �6   6-   �� 5      $��20 �6   6,   �� 5      $	��500 �6   6-   �� 5      $��20 �6   6,   �� 5      6!   .+�5   
   �� $��Gestion de portefeuille��6   $��50(�63   $��Monotype Corsiva)�6A   $��Center=�5      $��Center=�61   $��5��6L   6b   �� 5   
   $��2��6   $��0��6"   .+�5      �� $��30��6   $��Les traders��6$   
���  ��$��20(�6L   $��Monotype Corsiva)�6Z   6z   �� 5      -   5        $��
lstTraders��5      ��6W   Z� ��5      �� 5      .R�5      ��  �� Orientation$ 
Horizontal=�6%   .+�5       �� $��50��6C   ��6(   �� *	NumTrader+6P   �� 5!      $	��100��6C   ��6(   �� *	NomTrader+6Q   5"      5#      5%      5&      �� 5'   
   $��2��6   $��2��6"   .+�5(      �� $��30��6   $��Les actions��6$   
���  ��$��20(�6L   $��Monotype Corsiva)�6Z   6z   �� 5)      -   5        $��
lstActions��5)      ��6W   Z� ��5*      �� 5+      .R�5,      �� $ 
Horizontal=�6%   .+�5-      �� $��50��6H   ��6(   �� *NumActionPerso+6U   �� 5.      $	��130��6H   ��6(   �� *NomActionPerso+6V   �� 5/      $��70��6C   ��6(   �� *	PrixAchat+6P   �� 50      $��70��6B   ��6(   �� *
Quantite+6O   �� 51      $	��110��6?   ��6(   �� *Total+6M   52      53      55      56      �� 57   
   $��2��6   $��4��6"   .+�58      �� $��30��6   $��Total du portefeuille��6$   
���  ��$��Center=�6V   $��20(�6s   $��Monotype Corsiva)�6�   6�   �� 59      $��20��6   6!   �� 5:      -   5        $��txtTotalPortefeuille��5:      
��� E��$��Center=�6I   $	��200��6m   {�.  6�   �� 5;      $��20��6   6!   �� 5<      -   5        $��	btnVendre��5<   &   $��Vendre��6   $��Center=�67   $	��200��6T   6z   �� 5=      $��20��6   6!   �� 5>      $��30��6   $��	Quantité��6$   
���  ��$��Center=�6I   $��20(�6f   $��Monotype Corsiva)�6t   6�   �� 5?      $��20��6   6!   �� 5@      -   5        $��txtQuantiteVendue��5@      $��Center=�6/   $	��200��6S   6a   5A      �� 5B   
   $��4��6   $��0��6"   .+�5C      �� $��30��6   $!��Les actions non possédées��6$   
���  ��$��20(�6Z   $��Monotype Corsiva)�6h   6�   �� 5D      -   5        $��lstActionsNonPossedees��5D      ��64   Z� ��5E      �� 5F      .R�5G      �� $ 
Horizontal=�6%   .+�5H      �� $��50��6C   ��6(   �� *	NumAction+6P   �� 5I      $	��130��6C   ��6(   �� *	NomAction+6Q   5J      5K      5M      5N      �� 5O   
   $��4��6   $��2��6"   .+�5P      �� $��30��6   $��Prix d'achat��6$   
���  ��$��Center=�6M   $��20(�6j   $��Monotype Corsiva)�6x   6�   �� 5Q      $��20��6   6!   �� 5R      -   5        $��txtPrixAchat��5R      $��Center=�6*   $	��200��6N   6\   �� 5S      $��20��6   6!   �� 5T      $��30��6   $��	Quantité��6$   
���  ��$��Center=�6I   $��20(�6f   $��Monotype Corsiva)�6t   6�   �� 5U      $��20��6   6!   �� 5V      -	   5        $��txtQuantiteAchetee��5V      $��Center=�60   $	��200��6T   6b   �� 5W      $��20��6   6!   �� 5X      -
   5        $��
btnAcheter��5X   '   $��Acheter��6   $��Center=�69   $	��200��6V   6}   5Y      �� 5Z   
   -   5        $��	imgAction��5Z      $��4��6!   $��4��6.   $��UniformToFill=�6>   6X   5[      5\      