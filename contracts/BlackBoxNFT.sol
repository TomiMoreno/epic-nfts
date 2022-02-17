// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";

contract BlackBoxNFT is ERC721URIStorage {
  using Counters for Counters.Counter;
  Counters.Counter private _tokenIds;

  constructor() ERC721 ("BlackBox", "BB") {
    console.log("This is the black box contract");
  }

  function makeABlackBox() public {
    uint256 newItemId = _tokenIds.current();

    _safeMint(msg.sender, newItemId);

    _setTokenURI(newItemId, "data:application/json;base64,ewogICJuYW1lIjogIlRvbWlNb3Jlbm8iLAogICJkZXNjcmlwdGlvbiI6ICJodHRwczovL3RvbWltb3Jlbm8uY29tIiwKICAiaW1hZ2UiOiAiZGF0YTppbWFnZS9zdmcreG1sO2Jhc2U2NCxQSE4yWnlCNGJXeHVjejBpYUhSMGNEb3ZMM2QzZHk1M015NXZjbWN2TWpBd01DOXpkbWNpSUhacFpYZENiM2c5SWpBZ01DQXpOVEFnTXpVd0lqNEtJQ0FnSUR4emRIbHNaVDR1WW1GelpTQjdJR1pwYkd3NklIZG9hWFJsT3lCbWIyNTBMV1poYldsc2VUb2djMlZ5YVdZN0lHWnZiblF0YzJsNlpUb2dNVFJ3ZURzZ2ZUd3ZjM1I1YkdVK0NpQWdJQ0E4Y21WamRDQjNhV1IwYUQwaU1UQXdKU0lnYUdWcFoyaDBQU0l4TURBbElqNEtJQ0FnSUR4aGJtbHRZWFJsSUdGMGRISnBZblYwWlZSNWNHVTlJbGhOVENJZ1lYUjBjbWxpZFhSbFRtRnRaVDBpZUNJZ1puSnZiVDBpTFRFd01DVWlJSFJ2UFNJeE1EQWxJZ29nSUNBZ0lDQWdJR1IxY2owaU1UQnpJaUJ5WlhCbFlYUkRiM1Z1ZEQwaWFXNWtaV1pwYm1sMFpTSXZQZ29nSUR3dmNtVmpkRDRLUEdFZ2FISmxaajBpYUhSMGNITTZMeTkwYjIxcGJXOXlaVzV2TG1OdmJTSWdkR0Z5WjJWMFBTSmZZbXhoYm1zaVBnb2dJQ0FnUEhSbGVIUWdlRDBpTlRBbElpQjVQU0kxTUNVaUlHTnNZWE56UFNKaVlYTmxJaUJrYjIxcGJtRnVkQzFpWVhObGJHbHVaVDBpYldsa1pHeGxJaUIwWlhoMExXRnVZMmh2Y2owaWJXbGtaR3hsSWo1b2RIUndjem92TDNSdmJXbHRiM0psYm04dVkyOXRQQzkwWlhoMFBnbzhMMkUrQ2p3dmMzWm5QZz09Igp9");

    console.log("An NFT w/ ID %s has been minted to %s", newItemId, msg.sender);

    _tokenIds.increment();
  }
}