// Contrato de votación en Solidity
pragma solidity ^0.8.0;

contract Voting {
    address public owner;
    mapping(address => bool) public voters;
    mapping(string => uint256) public votes;

    event Voted(address indexed voter, string candidate);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    modifier onlyVoter() {
        require(voters[msg.sender], "Not a valid voter");
        _;
    }

    function addVoter(address _voter) external onlyOwner {
        voters[_voter] = true;
    }

    function vote(string memory _candidate) external onlyVoter {
        require(bytes(_candidate).length > 0, "Candidate name cannot be empty");
        votes[_candidate]++;
        emit Voted(msg.sender, _candidate);
    }

    function getResult(string memory _candidate) external view returns (uint256) {
        return votes[_candidate];
    }
}
