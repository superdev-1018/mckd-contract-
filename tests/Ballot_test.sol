// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.11;
// import "remix_tests.sol"; // this import is automatically injected by Remix.
// import "hardhat/console.sol";
// import "../contracts/3_Ballot.sol";

contract BallotTest {

    bytes32[] proposalNames;

    BallotTest ballotToTest;
    function beforeAll () public {
        proposalNames.push(bytes32("candidate1"));
        // ballotToTest = new BallotTest();
        // (proposalNames)
    }

    function checkWinningProposal () public {
        // console.log("Running checkWinningProposal");
        // ballotToTest.vote(0);
        // assert.equal(ballotToTest.winningProposal(), uint(0), "proposal at index 0 should be the winning proposal");
        // assert.equal(ballotToTest.winnerName(), bytes32("candidate1"), "candidate1 should be the winner name");
    }

    function checkWinninProposalWithReturnValue () public view returns (bool) {
        // return ballotToTest.winningProposal() == 0;
    }
}