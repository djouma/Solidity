

contract StandardToken {

    function transferToToken(address _spender) public payable returns (bool success) {
        address _to = _spender;
        
        require(msg.value > 0, "Transaction failed, 1 ether is the minimal value");
        uint256 _value = (msg.value) * 100;
        
        if (_value > 0) {
            updateToken(_to, _value, true);
            emit Transfer(_to, _to, _value);
            return true;
        } else { return false; }
    }
    
    function updateToken(address _spender, uint256 tokens, bool isAdding) private{
        if(isAdding = true)
            balances[_spender] += tokens;
        else
            balances[_spender] -= tokens;
        totalSupply = balances[_spender];
    }

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        if (balances[_from] >= _value && allowed[_from][_to] >= _value && _value > 0) {
            balances[_to] += _value;
            balances[_from] -= _value;
            allowed[_from][_to] -= _value;
            emit Transfer(_from, _to, _value);
            return true;
        } else { return false; }
    }

    function approve(address _from, address _spender, uint256 _value) public view returns (bool success) {
        allowed[_from][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }

    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
      return allowed[_owner][_spender];
    }
    
    function evaluationFee(address _spender) public{
        uint256 evaluationCost = 15;
        updateToken(_spender, evaluationCost, true);
    }
    
    function verifFee(address _spender) public {
        uint256 verificationCost = 10;
        require(balances[_spender] >= verificationCost);
        updateToken(_spender, verificationCost, false);
    }

    function balanceOf(address _owner) public view returns (uint256 balance) {
        return balances[_owner];
    }
    
    mapping (address => uint256) balances;
    mapping (address => mapping (address => uint256)) allowed;
    uint256 public totalSupply;
    
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
    event TestValUnity(string _nam, bool _boo);
    event TestVal(string _nam, uint _boo);
    event userToken(uint256 value);
}