contract Victim {
  bool public key = true;
  function unlock() public { key = true; }
  function vul(uint arg) public returns(uint) { 
    if(!key) return 0xff + arg; 
  }
}