contract Victim {
  bool locked = true;
  function dep(bool _key) public { locked = _key;}
  function vul(uint _arg) public returns(uint) { 
    if(!locked) return 0xff - _arg; 
  }
}