<!-- :female_detective: Looking for a new champion -->

# DAppNode package _Ropsten_

<!--DAppNode package logo (could be added with an hyperlink to a youtube video): -->

[![](avatar-ropsten.png)](https://www.youtube.com/watch?v=uquMg_T9oZQ)

<!--Brief introduction about the source project (official project definition is an option): -->

Get Ropsten Ethereum faucet [at this site](https://faucet.ropsten.be/)

### Why _Ropsten_ ?

<!--What can you do with this package?: -->

Ropsten Ethereum, also known as “Ethereum Testnet”, are as the name implies, a testing network that runs the same protocol as Ethereum does and is used to testing purposes before deploying on the main network (Mainnet).

### Extra options

You can write extra options on the adminui or edit the `docker-compose.yml` and add extra options, such as:

```
 - EXTRA_OPTS=--syncmode full --gcmode archive --wsapi "db,eth,net,ssh,miner,web3,personal,admin"
```

### Connect using web3js

If the package is running and you're connected to your dappnode you can use:

```
var Web3 = require('web3');
var web3 = new Web3('ws://my.ropsten.dnp.dappnode.eth:8546')
web3.eth.getBlockNumber().then(console.log)
```

In case you are running it locally:

```
var Web3 = require('web3');
var web3 = new Web3('ws://127.0.0.1:8546')
web3.eth.getBlockNumber().then(console.log)
```

### Manteinance

<!--Table with champion/s mantainers, versions and update status -->
<!--UPDATED: :x: OR :heavy_check_mark: -->

|      Updated       |    Champion/s    |
| :----------------: | :--------------: |
| :heavy_check_mark: | @pablomendezroyo |

### License

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE](LICENSE) file for details
