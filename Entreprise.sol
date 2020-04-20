pragma solidity >=0.4.22 <0.6.0;
        contract Entreprises {
            struct Entreprise{

                uint ID_Entreprise;

                string Nom;

                string Secteur;

                string Date_Creation;

                string Classification_taille;

                string Pays_Entreprise;

                string Adresse_Entreprise;

                string courriel_Entreprise;

                uint telephone_Entreprise;

                string Site_web;

            }
        event getEntreprise(string Nom_Entreprise);

        mapping (uint => Entreprise) tab_Entreprise;

        function Ajout_Entreprise( uint ID_Entreprise,string memory Nom,string memory Secteur, string memory Date_Creation, string memory Classification_taille,string memory Pays_Entreprise,string memory Adresse_Entreprise, string memory courriel_Entreprise, uint telephone_Entreprise, string memory Site_web) public{

            tab_Entreprise[ID_Entreprise].ID_Entreprise = ID_Entreprise;

            tab_Entreprise[ID_Entreprise].Nom= Nom;

            tab_Entreprise[ID_Entreprise].Secteur=Secteur;

            tab_Entreprise[ID_Entreprise].Date_Creation=Date_Creation;

            tab_Entreprise[ID_Entreprise].Classification_taille=Classification_taille;

            tab_Entreprise[ID_Entreprise].Pays_Entreprise=Pays_Entreprise;

            tab_Entreprise[ID_Entreprise].Adresse_Entreprise=Adresse_Entreprise;

            tab_Entreprise[ID_Entreprise].courriel_Entreprise=courriel_Entreprise;

            tab_Entreprise[ID_Entreprise].telephone_Entreprise=telephone_Entreprise;

            tab_Entreprise[ID_Entreprise].Site_web=Site_web;
        }
        function getEntrepriseProperty(uint256 ID_Entreprise) public {
            uint Entrepriseid = ID_Entreprise;
            tab_Entreprise[Entrepriseid].Nom;
            emit getEntreprise(tab_Entreprise[Entrepriseid].Nom);
        }
}