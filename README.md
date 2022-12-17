# miladystationA
New ERC721A contract upgrade for MiladyStation
aiming to release on 12/21

???
question in comments of mintMiladys: should skip calling MAX_MILADYSTATIONS by just hard coding it? ie 1212, 30

am running this on remix is why no import included. It is also why miladyHolderCheck is set to return a value matter what, since the Remix Ethereum machine is virtual / not real / unable to check milady mainnet.

https://github.com/Vectorized/solady

https://github.com/chiru-labs/ERC721A/blob/main/contracts/ERC721A.sol

https://github.com/Vectorized/closedsea/blob/main/src/example/ExampleERC721A.sol

notes from whale goddess: the requires at the top of the mint function do too much contract checking. might be another reason why it costs too much gas. recommends doing a merkle tree proof instead
