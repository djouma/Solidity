pragma solidity >=0.4.22 <0.6.0;
import "remix_tests.sol";

contract Etablissements {
    struct Etablissement {
        uint256 id_ees;
        string name_school;
        string type_school;
        string country_school;
        string adress_school;
        string website;
        uint256 id_agent;
    }
    //uint256 private generateId = 0;
    
    mapping (uint256 => Etablissement) EES;
    
    uint256 private generateId = 0;
    
    event getEtablissement(string name_school, string country_school);
    
    event sendIdEtablissement(uint256 idEtablissement, string name_school);
    
    // Create a new school with $(_numProposals) different proposals.
    constructor() public { }
    
    function createNewEES(uint256 idESS, string memory  nameschool, string memory typeschool, string memory countryschool, string memory adressschool, string memory website, uint256 id_agent) public {
        require(idESS >= 0);
        EES[idESS].name_school = nameschool;
        EES[idESS].type_school = typeschool;
        EES[idESS].country_school = countryschool;
        EES[idESS].adress_school = adressschool;
        EES[idESS].website = website;
        EES[idESS].id_agent = id_agent;
    }
    
    function getEtablissementProperty(uint256 idSchool) public {
        uint school = idSchool;
        EES[school].name_school;
        EES[school].country_school;
        emit getEtablissement(EES[school].name_school, EES[school].country_school);
    }
}