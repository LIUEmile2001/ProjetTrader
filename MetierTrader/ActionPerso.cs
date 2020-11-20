using System;
using System.Collections.Generic;
using System.Text;

namespace MetierTrader
{
    public class ActionPerso
    {
        private int numActionPerso;

        private string nomActionPerso;

        private double prixAchat;

        private int quantite;

        private double total;

        public ActionPerso(int unNum, string unNom,double unPrixAchat,int uneQuantite,double unTotal)
        {
            NumActionPerso = unNum;
            NomActionPerso = unNom;
            PrixAchat = unPrixAchat;
            Quantite = uneQuantite;
            Total = unTotal;
        }

        public int NumActionPerso { get => numActionPerso; set => numActionPerso = value; }
        public string NomActionPerso { get => nomActionPerso; set => nomActionPerso = value; }
        public double PrixAchat { get => prixAchat; set => prixAchat = value; }
        public int Quantite { get => quantite; set => quantite = value; }
        public double Total { get => total; set => total = value; }
    }
}
