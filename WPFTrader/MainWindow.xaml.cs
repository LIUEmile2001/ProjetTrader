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
using System.Windows.Navigation;
using System.Windows.Shapes;
using GestionnaireBDD;
using MetierTrader;

namespace WPFTrader
{
    /// <summary>
    /// Logique d'interaction pour MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        GstBdd unGst;
        public MainWindow()
        {
            InitializeComponent();
            
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            unGst = new GstBdd();
            lstTraders.ItemsSource = unGst.getAllTraders();
        }

        private void lstTraders_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if(lstTraders.SelectedItem != null)
            {
                lstActions.ItemsSource = unGst.getAllActionsByTrader((lstTraders.SelectedItem as Trader).NumTrader);
                //txtTotalPortefeuille.Text = unGst.getTotalPorteFeuille((lstTraders.SelectedItem as Trader).NumTrader);
                lstActionsNonPossedees.ItemsSource = unGst.getAllActionsNonPossedees((lstTraders.SelectedItem as Trader).NumTrader);

            }
        }

        private void lstActions_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if(lstActions.SelectedItem != null)
            {
                if (lstActions.ItemsSource = unGst.getCoursReel((lstActions.SelectedItem as MetierTrader.Action).CoursReel);
                imgAction.Source = new BitmapImage(new Uri("/Images/Haut.png", UriKind.RelativeOrAbsolute));
            }
        }

        private void btnVendre_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnAcheter_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
