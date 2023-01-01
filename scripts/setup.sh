make all

rm -rf ~/.six

mkdir ~/.six

six init --chain-id test test
six keys add cooluser --keyring-backend test
six add-genesis-account cooluser 100000000000000stake,10000000000000000usix --keyring-backend test
six gentx cooluser 1000000000stake --chain-id test --keyring-backend test
six collect-gentxs
six start