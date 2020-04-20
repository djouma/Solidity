pragma solidity >=0.4.22 <0.6.0;
import "./Etudiant.sol";
import "./token.sol";
        contract Diplomes is Etudiants{
            struct Diplome{

                uint256 Id_Diplome;

                uint256 Id_titulaire;

                string Nom_Etablissement_Enseignement;

                uint256 ID_EES;

                string Pays_Diplome;

                string Type_diplome;

                string Specialite;

                string Mention;

                string Date_Evaluation;

            }
        event getDiplome(uint titulaire);
        
        mapping (uint256 => Diplome) tab_Diplome; 
        StandardToken st;

        function Ajout_diplome( uint256 Id_Diplome, uint256 Id_titulaire,string memory Nom_Etablissement_Enseignement,

        uint256 ID_EES,string memory Pays_Diplome,string memory Type_diplome, string memory Specialite,

        string memory Mention,string memory Date_Evaluation) public{

        tab_Diplome[Id_Diplome].Id_Diplome=Id_Diplome;

        tab_Diplome[Id_Diplome].Id_titulaire=Id_titulaire;

        tab_Diplome[Id_Diplome].Nom_Etablissement_Enseignement=Nom_Etablissement_Enseignement;

        tab_Diplome[Id_Diplome].ID_EES=ID_EES;

        tab_Diplome[Id_Diplome].Pays_Diplome=Pays_Diplome;

        tab_Diplome[Id_Diplome].Type_diplome=Type_diplome;

        tab_Diplome[Id_Diplome].Specialite=Specialite;

        tab_Diplome[Id_Diplome].Mention=Mention;

        tab_Diplome[Id_Diplome].Date_Evaluation=Date_Evaluation;

    }
    uint256 idEtudiantverifie;
    function getDiplomeProperty(uint256 ID_Diplome,address _spender) public {
        uint Diplomeid = ID_Diplome;
        idEtudiantverifie = tab_Diplome[ID_Diplome].Id_titulaire;
        emit getDiplome(tab_Diplome[ID_Diplome].Id_titulaire);
        st.verifFee(_spender);
    }
    event getEtudiant(string nom,string Prenom);
    function getverifieIdentite(uint256 id_Etudiantverifie)public{
        id_Etudiantverifie=idEtudiantverifie;
        require(idEtudiantverifie==id_Etudiantverifie);
        tab_Etudiant[idEtudiantverifie].Noms;
        tab_Etudiant[idEtudiantverifie].Prenoms;
        emit getEtudiant(tab_Etudiant[idEtudiantverifie].Noms,tab_Etudiant[idEtudiantverifie].Prenoms);
        
    }
    
}
