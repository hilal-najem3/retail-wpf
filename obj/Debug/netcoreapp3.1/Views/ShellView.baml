   M S B A M L   `   `   `  ����E  Aretail-wpf, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:retail_wpf.Viewsretail_wpf.Views  5   	        retail_wpf.Views.ShellView   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:retail_wpf.Views     5   	   b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  Login��5	   	   $	��500��6   $	��350��6$    � WindowStartupLocation$ CenterScreen=�5
   	   $��Segoe UI Emoji)�5   	    � WindowStyle 5   	   ��  �� Path$ WindowStyle� �� Mode$ TwoWay=� � 
ResizeMode 5   	   �� $ Resize�$ TwoWay=� � WindowState 5   	   �� $ WindowState�$ TwoWay=�.��5      � .+�5   
   �� $	��280��6?   $	��Top=�6L   y�6   �� *LoginFromVisibility+��5      �� 5       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5      � 	 � Color$	 	#FF2281D1��6#   � 5      $	 	#FF34268A��6#   
 � Offset$
 1Q�65   � 5      $	 	#FF33288B��6#   $
 0.546Q�65   5      5      �� 5   
   $	��280��6?   $	��240��6K   $��Bottom=�6X   $
��0,80q�6s    �� RadiusY$ 10��6�    �� RadiusX$ 10��6�   
�������y�6   �� *LoginFromVisibility+ J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 15Q�6#      	Direction$ 0Q�63      RenderingBias$ Quality=�6A      ShadowDepth$ 1Q�6Y      Color$ 	#FFBBBBBB��6i   5      � 5   
   $��Bottom=�6:   $��35,80q�6U   $	��240��6d   y�6   �� *LoginFromVisibility+.+�5       �� $��LOGIN��6   $��Center=�6$   $	��Top=�6A   $��5q�6Y   
�������$��18(�6v   �� 5!      $��Center=�6   $��15q�64   .+�5"      �� -   5         ��Name$ Username��5"      $
��0,10q�6,   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ EMAIL��6:    %  !MaterialDesignFloatingHintTextBox#��[  6a   $��Champagne & Limousines)�6�   $��18(�6�   G� 5#      -   5         G�Name$ Password��5#      $
��0,10q�60   $ Password��6>    ) %MaterialDesignFloatingHintPasswordBox#��[ 6h   $��Champagne & Limousines)�6�   $��18(�6�   5$      5%      �� 5&   
   -   5         ��Name$ LogIn��5&   <   $	��150��6K   $��Center=�6W   $��Bottom=�6t   $
��0,65q�6�   $��LOGIN��6�   y�6   �� *LoginFromVisibility+6�   �� 5'   
   $��Forgot your password?��6?   $��Center=�6\   $��Bottom=�6y   $��30q�6�   
������� � Cursor$
 Hand��6�   y�6   �� *LoginFromVisibility+6�   �� 5(   
   -   5         ��Name$ 	ImagePath��5(   ;   $	��100��5)      $	��100��6   $	��Top=�6)   $��30q�6A   y�5(      �� *LoginFromVisibility+��6N   �� *	ImagePath+5)   A   ]� 5+   
   y�6   �� *	AppData+��5,      �� 5-      $ 0.5,1&�6&   $ 0.5,0&�67   .��5.      � $	 	#FF2281D1��6#   � 5/      $	 	#FF34268A��6#   $
 1Q�65   � 50      $	 	#FF33288B��6#   $
 0.546Q�65   51      .+�53      o� $	��Top=�6   $��18(�6(   ���	#FFBCB7F3��54      �� 55      .R�56      ]� $��Stretch=�6$   57      .@�5:      m� $��_File��6   y�6*   �� *
IsLoggedIn+   BooleanToVisibilityConverter �� 	Converter# [  �� FallbackValue$ 	Collapsed��.@�5;      m� -   5         m�Name$ ExitApplication��5;      $��E_xit��5<      5=      m� 5>      -   5        $ 	SalesView��5>      $��
_Main Page��6.   y�5?      �� *
IsLoggedIn+# [ $ 	Collapsed��m� 5A      -   5        $ Administration��5A      $��Administration��63   y�5B      �� *AdministartionBtn+# [ $ 	Collapsed��.@�5D      m� -   5        $ DiscountsManagement��5D   3   $��
_Discounts��6   63   m� 5F      $��_Finance Management��6   .@�5G      m� -	   5        $ ConversionsManagement��5G   9   $��_Conversions��6#   69   m� 5H      -
   5        $ CurrenciesManagement��5H   8   $��_Currencies��6#   68   5I      m� 5K      $��_Products - Categories��6   .@�5L      m� -   5        $ 
Categories��5L   8   $��_Categories��6#   68   m� 5M      -   5        $ Products��5M   6   $��	_Products��6#   66   5N      m� 5P      -   5        $ TaxesManagement��5P   /   $��_Taxes��6   6/   m� 5R      -   5        $ UserManagement��5R      $��Users Management��67   5T      m� 5V      $��_Account��6   y�5W      �� *
IsLoggedIn+# [ $ 	Collapsed��.@�5X      m� -   5        $ Profile��5X      $��_Profile��60   m� 5Y      -   5        $ LogOut��5Y      $��_Log Out��6/   5Z      5[      �� 5]      $��20 10 20 20q�6   
������� �� CornerRadius$ 10��6=   ._�5^      � -   5         �Name$ ContentGrid��5^   "   $��5q�6   .+�5_      � 
�������.+�5`      �� -   5         ��Name$ 
ActiveItem��5`   )   $��0q�6=   5a      5b      5c      5d      5e      5f      