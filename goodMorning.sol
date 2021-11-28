contract GoodMorning{
    mapping (address=>uint256)  gms;
    function gm() external{
        gms[msg.sender]=block.timestamp;
    }   
    modifier say_gm(){
        require(block.timestamp-gms[msg.sender]<=1 days,'btch y no say gm');
        _;
    }
    function interact(address userAddress) public view say_gm returns (string memory) {
      return 'wgmi';
   }
}