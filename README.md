# Test installing pendulum with poetry2nix

Use this repo to create MREs (minimal reproducible example) to showcase installation problems of `pendulum` poetry2nix.

## How to exercise

```bash
$ git checkout --branch pendulum
$ nix-shell
[...]
Processing /build/pendulum-2.1.2
    Preparing wheel metadata ... done
Building wheels for collected packages: pendulum
  Building wheel for pendulum (PEP 517) ... done
  Created wheel for pendulum: filename=pendulum-2.1.2-cp38-cp38-manylinux_2_32_x86_64.whl size=165944 sha256=c57e48d4dd6188a6134e3d1ef9cbca72b13712c9639315e06ee0feebadc9ccab
  Stored in directory: /build/pip-ephem-wheel-cache-oby836rn/wheels/bf/fd/2f/e87784331d1dfc0596501bec459badf7a7893cf1dc3995554f
Successfully built pendulum
Finished creating a wheel...
Finished executing pipBuildPhase
installing
Executing pipInstallPhase
/build/pendulum-2.1.2/dist /build/pendulum-2.1.2
ERROR: pendulum-2.1.2-cp38-cp38-manylinux_2_32_x86_64.whl is not a supported wheel on this platform.
```
