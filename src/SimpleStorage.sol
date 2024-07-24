// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; //version requriement

// sepolia zksync explorer:  https://sepolia.explorer.zksync.io/
// sepolia testnet explorer: https://sepolia.etherscan.io/
// sepolia zksynct testnet fac: https://portal.zksync.io/

contract SimpleStorage {
    address myAddr = 0xD7ACd2a9FD159E69Bb102A1ca21C9a3e3A5F771B;
    uint256 private total = 0;
    uint256 internal number = 0;
    People public person = People({fav: 0, name: "abc"});
    // dymatic array
    People[] public people;

    mapping(string => uint256) public nameToFav;

    struct People {
        uint256 fav;
        string name;
    }

    // external means it can be called by external contract only
    // virtual means it can be overrided by child contract
    function store(uint256 _number) external virtual {
        number = _number;
    }

    // view function gas free
    function get() external view returns (uint256) {
        return number;
    }

    // view function gas free
    function retrieve() public view returns (uint256) {
        return total;
    }

    // gas cost
    // struct,mappings,array must be modified by :
    // calldata: temporary in memory,can't not be modified
    // memory: temporary in memory,can be modified
    // storage: permanent in memory ,can be modified
    function addPerson(string memory _name, uint256 _fav) public {
        people.push(People({fav: _fav, name: _name}));
        nameToFav[_name] = _fav;
        total++;
    }
}
