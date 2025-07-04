# Testing various features of poetry2nix on Big Sur

## Note: Monterey work continues in https://github.com/teamniteo/monterey-poetry-test

Use this repo to create MREs (minimal reproducible example) to showcase various
features and problems with poetry2nix.

## How to use

```bash
# Enter nix-shell
$ nix-shell

# Try to import `trivial` package
[nix-shell:~/work/big-sur-poetry-test]$ python -m trivial
/nix/store/hpwbhg5pm8kxd93ar1dva1ixqhbz09n9-python3-3.9.6-env/bin/python3.9: No module named trivial

# Comment out docker-compose and try again
[nix-shell:~/work/big-sur-poetry-test]$ exit
$ nano shell.nix # comment out docker-compose
[nix-shell:~/work/big-sur-poetry-test]$ python -m trivial
Original
```
## We're hiring!

At Niteo we regularly contribute back to the Open Source community. If you do too, we'd like to invite you to [join our team](https://niteo.co/careers)!
