using MySql.Data.MySqlClient;
using System;
using MetierTrader;
using System.Collections.Generic;

namespace GestionnaireBDD
{
    public class GstBdd
    {
        private MySqlConnection cnx;
        private MySqlCommand cmd;
        private MySqlDataReader dr;

        // Constructeur
        public GstBdd()
        {
            string chaine = "Server=localhost;port=3308;Database=bourse;Uid=root;Pwd=";
            cnx = new MySqlConnection(chaine);
            cnx.Open();
        }

        public List<Trader> getAllTraders()
        {
            List<Trader> mesTraders = new List<Trader>();
            cmd = new MySqlCommand("Select idTrader,nomTrader from trader;", cnx);
            dr = cmd.ExecuteReader();
            while(dr.Read())
            {
                Trader unTrader = new Trader(Convert.ToInt16(dr[0]), dr[1].ToString());
                mesTraders.Add(unTrader);
            }

            dr.Close();

            return mesTraders;
        }
        public List<ActionPerso> getAllActionsByTrader(int numTrader)
        {
            List<ActionPerso> mesActionsPerso = new List<ActionPerso>();
            cmd = new MySqlCommand("Select a.idAction,a.nomAction,prixAchat,quantite,ach.prixAchat * ach.quantite as total from Action a inner join acheter ach ON a.idAction = ach.numAction inner join trader t ON ach.numTrader = t.idTrader where idTrader = " + "'" + numTrader + "';",cnx);
            dr = cmd.ExecuteReader();

            while(dr.Read())
            {
                ActionPerso aP = new ActionPerso(Convert.ToInt16(dr[0]), dr[1].ToString(), Convert.ToDouble(dr[2]), Convert.ToInt16(dr[3]),Convert.ToDouble(dr[4]));
                mesActionsPerso.Add(aP);
            }

            dr.Close();
            return mesActionsPerso;
        }

        //public int getTotalPorteFeuille(int numTrader)
        //{
        //    //int total;
        //    //cmd = new MySqlCommand("select sum(quantite * prixAchat) as total from action a inner join acheter ach on a.idAction = ach.numAction inner join trader t on ach.numTrader = t.idTrader where t.idTrader = " + "'" + numTrader + "';", cnx);
        //    //dr = cmd.ExecuteReader();

        //    //dr.Read();

        //    //total = Convert.ToDouble(dr[0]);

        //    //dr.Close();
        //    //return total;
        //}

        public List<MetierTrader.Action> getAllActionsNonPossedees(int numTrader)
        {
            List<MetierTrader.Action > mesActionsNonPossedees = new List<MetierTrader.Action>();
            cmd = new MySqlCommand("select idAction,nomAction from action a inner join acheter ach on a.idAction = ach.numAction inner join trader t on ach.numTrader = t.idTraderr where a .idAction not in (select idAction from action a inner join acheter ach on a.idAction=ach.numAction inner join trader t on ach.numTrader = t.idTrader where t.idTrader = " + "'" + numTrader + "';", cnx);
            dr = cmd.ExecuteReader();
            while(dr.Read())
            {
                MetierTrader.Action mta = new MetierTrader.Action(Convert.ToInt16(dr[0]), dr[1].ToString());
                mesActionsNonPossedees.Add(mta);
            }

            dr.Close();
            return mesActionsNonPossedees;
        }

        public void SupprimerActionAcheter(int numAction, int numTrader)
        {
            cmd = new MySqlCommand("delete from action a inner join acheter ach on a.idAction = ach.numAction inner join trader t on ach.numTrader = t.idTrader where idAction = " + "'" + numAction + " And numTrader = " + numTrader + "';");


            cmd.ExecuteNonQuery();
        }

        public void UpdateQuantite(int numAction, int numTrader, int quantite)
        {
            cmd = new MySqlCommand("update action set idAction = " + numAction + "," + "where idAction = 1");
        }

        public double getCoursReel(int numAction)
        {
            double coursReel;
            cmd = new MySqlCommand("select coursReel from action where idAction =" + numAction,cnx);
            dr = cmd.ExecuteReader();
            dr.Read();

            coursReel = Convert.ToDouble(dr[0]);

            dr.Close();

            return coursReel;



        }
        public void AcheterAction(int numAction, int numTrader, double prix, int quantite)
        {

        }
       
    }
}
