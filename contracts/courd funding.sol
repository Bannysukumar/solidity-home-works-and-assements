// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract CroudFunding {
    address public creator;// creator is owner of this contract
    uint public goal;// goal is funding limit
    uint public deadline;// deadline of this contract
    mapping(address => uint) public contributions;// who can funding the money to this contract that are called contributions
    uint public totalContributions;// total amount calculating
    bool public isFunded;//who can funded
    bool public isCompleted;//contract is completed or not
    // this are events
    event GoalReached(uint totalContributions);
    event FundTransferred(address backer, uint amount);
    event DeadlineReached(uint totalContributions);

    constructor(uint funding, uint duration) {
        creator = msg.sender;
        goal = funding * 2 ether; // funding in ETH equivalent
        deadline = block.timestamp + duration * 2 minutes;// deadline caluculating
        isFunded = false;
        isCompleted = false;
    }
    
    modifier onlyCreator() {
        require(msg.sender == creator, "only the creator can call this function");
        _;
    }

    function contribute() public payable {
        require(block.timestamp < deadline, "funding period has ended");
        require(!isCompleted, "crowdfunding is already completed");

        uint contribution = msg.value;
        contributions[msg.sender] += contribution;
        totalContributions += contribution;
        // total contributions are complted its true
        if (totalContributions >= goal) {
            isFunded = true;
            emit GoalReached(totalContributions);
        }

        emit FundTransferred(msg.sender, contribution);
    }
    // if found is completed the amount can be withdraw only admim or creater 
    function withdrawFunds() public onlyCreator {
        require(isFunded, "goal is not reached");
        require(!isCompleted, "crowdfunding is already completed");

        isCompleted = true;
        payable(creator).transfer(address(this).balance);
    }
    // who can send the money that member can refound that amount
    function getRefund() public {
        require(block.timestamp >= deadline, "funding period has not ended");
        require(!isFunded, "goal has been reached, no refund allowed");
        require(contributions[msg.sender] > 0, "no contribution to refund");
        // send the fund to courd 
        uint contribution = contributions[msg.sender];
        contributions[msg.sender] = 0;
        totalContributions -= contribution;
        payable(msg.sender).transfer(contribution);

        emit FundTransferred(msg.sender, contribution);
    }
    // user can check his balance
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
    // if creater can extend the dead line after deploying contact is can be extend from here
    function extendDeadline(uint duration) public onlyCreator {
        deadline += duration * 2 minutes;
    }
}
