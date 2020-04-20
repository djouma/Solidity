pragma solidity >=0.4.22 <0.6.0;
import "./token.sol";
contract Etudiants is StandardToken {
    struct Etudiant{

uint Id_Etudiant;

string Noms;

string Prenoms;

string Date_Naissance;

string Sexe;

string Nationalite;

string Statut_civil;

string Adresse_Etudiant;

string courriel;

string telephone;

string section;

string sujet_PFE;

string Entreprise_Stage_PFE;

string NomPrenom_MaitreDeStage;

string Date_debut_stage;

string date_fin_stage;

uint Evaluation;

}
event getEtudiant(uint Id_Etudiant,string  Nom,string sujet_PFENew,string Entreprise_Stage_PFE,
string  Date_debut_stage,string  date_fin_stage,uint Evaluation);
mapping (uint256 => Etudiant) tab_Etudiant;
StandardToken st;

function ajout_Etudiant(uint Id_Etudiant,string memory Nom,string memory Prenom,string memory Date_Naissance,string memory Sexe,string memory Nationalite,string memory Statut_civil,string memory Adresse_Etudiant,string memory courriel,string memory telephone,string memory section)public{
    
  tab_Etudiant[Id_Etudiant].Id_Etudiant=Id_Etudiant;
  tab_Etudiant[Id_Etudiant].Noms=Nom;
  tab_Etudiant[Id_Etudiant].Prenoms=Prenom;
  tab_Etudiant[Id_Etudiant].Date_Naissance=Date_Naissance;
  tab_Etudiant[Id_Etudiant].Sexe=Sexe;
  tab_Etudiant[Id_Etudiant].Nationalite=Nationalite;
  tab_Etudiant[Id_Etudiant].Statut_civil=Statut_civil;
  tab_Etudiant[Id_Etudiant].Adresse_Etudiant=Adresse_Etudiant;
  tab_Etudiant[Id_Etudiant].courriel=courriel;
  tab_Etudiant[Id_Etudiant].telephone=telephone;
  tab_Etudiant[Id_Etudiant].section=section;
}

/*uint256 Id_Etudiant,string memory sujet_PFENew,string memory Entreprise_Stage_PFE,string memory NomPrenom_MaitreDeStage,
string memory Date_debut_stage,string memory date_fin_stage,uint Evaluation*/

function updateEtudiant(uint256 idEtudiant,string memory sujet_PFENew,string memory Entreprise_Stage_PFE,string memory NomPrenom_MaitreDeStage,
string memory Date_debut_stage,string memory date_fin_stage) 
    public
   {
     require(tab_Etudiant[idEtudiant].Id_Etudiant == idEtudiant);
      tab_Etudiant[idEtudiant].sujet_PFE=sujet_PFENew; 
      tab_Etudiant[idEtudiant].Entreprise_Stage_PFE=Entreprise_Stage_PFE; 
      tab_Etudiant[idEtudiant].NomPrenom_MaitreDeStage=NomPrenom_MaitreDeStage; 
      tab_Etudiant[idEtudiant].Date_debut_stage=Date_debut_stage;
      tab_Etudiant[idEtudiant].date_fin_stage=date_fin_stage;
       
     
  }
  
  function getEtudiantProperty(uint256 idEtudiant) public {
      
        tab_Etudiant[idEtudiant].Noms;
      
        emit getEtudiant(tab_Etudiant[idEtudiant].Id_Etudiant,tab_Etudiant[idEtudiant].Noms,tab_Etudiant[idEtudiant].sujet_PFE,
        tab_Etudiant[idEtudiant].Entreprise_Stage_PFE, tab_Etudiant[idEtudiant].Date_debut_stage,tab_Etudiant[idEtudiant].date_fin_stage,
        tab_Etudiant[idEtudiant].Evaluation
       
        );
        
    }
    
    
    function evaluationEtudiant(uint256 idEtudiant,uint Evaluation,address _spender) public{
         require(tab_Etudiant[idEtudiant].Id_Etudiant == idEtudiant);
            tab_Etudiant[idEtudiant].Evaluation=Evaluation; 
            st.evaluationFee(_spender);
    }
    
    

}
