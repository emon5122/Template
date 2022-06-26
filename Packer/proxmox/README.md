* Validate command
```
packer validate -var-file='../credentials.pkr.hcl' ubuntu-server-jammy.pkr.hcl
```
*Build command
```
packer build -var-file='../credentials.pkr.hcl' ubuntu-server-jammy.pkr.hcl
```