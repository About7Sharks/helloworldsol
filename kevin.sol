// Key Encrypted Vault Integration (Kev-in)
pragma solidity ^0.8.5;

contract KEVIN {
    struct Vault {
        address creator; // address who created it
        string name; // name of vault
        uint256 vaultId; // vault lookup id
        string uri; // data the vault holds
    }
    uint256 totalVaults;
    mapping(uint256 => Vault) public vaults;

    function createVault(
        string memory name,
        string memory uri
    ) public returns (uint256 vaultId) {
        Vault storage vault = vaults[totalVaults];
        vault.creator = msg.sender;
        vault.name = name;
        vault.uri = uri;
        totalVaults += 1;
        return totalVaults - 1;
    }

    function editVault(uint256 vaultId, string memory uri) public  returns (string memory newuri) {
        Vault storage vault = vaults[vaultId];
        require(
            msg.sender == vault.creator,
            "You are not the creator of this vault"
        );
        // update where the vault points to
        vault.uri= uri;
        return vault.uri;
    }
}
