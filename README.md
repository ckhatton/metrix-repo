
# Metrix

Useful scripts in relation to the cryptocurrency Metrix - https://metrixcoin.com/

## Upgrade the VPN wallet to v3.4.0

Modified from [JeffreyDC](https://github.com/JeffreyDC/Metrix/blob/master/install.sh).

**This script is for only upgrading the wallet and it comes with no warranty!**

**Make sure to make a copy of the `wallet.dat` file to somewhere very safe before proceeding. I personally recommend making a backup copy per wallet upgrade.**

All should be fine if you follow the instructions, otherwise contact the team for support (Use the channel [#support-main](https://discord.gg/FJ2CqD)).

Enter the follow at the shell prompt...

```
cd ~/
git clone git@github.com:ckhatton/metrix-repo.git
sudo sh metrix-repo/metrix_upgrade_3.4.0.sh
```

All being well, that should upgrade the wallet and fire it up again without any interruptions 😌

### If you are running a hot/cold masternode setup

Unlock the wallet if locked with a passphrase. Then type `metrix-cli masternode start`. It should report that the masternode has been started remotely.

> **Note:**
>
> If it reports the masternode cannot be started, it is likely the database needs rebuilding.
> 
> Run the command `metrix-cli stop` and then the command `metrixd` to start up the wallet again.
>
> If it does say the database needs to be rebuilt, hit return (Enter) to exit and then rename/delete the folders `blocks`,`chainstate`, and `database` under `~/.metrix`. Once you have done that run `metrixd` again.
> 
> It should take around two to three hours to fully synchronise, depending on your setup. You can check the number of blocks synced so far by running `metrix-cli getinfo`. Compare it with current block number via the [Metrix explorer](https://metrixexplorer.kdhsolutions.co.uk/).

---

> Donations (Metrix):
> LhjHjMw8mfWtQSwGst5waGyURoCEYqQUZy
