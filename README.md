## list workspaces 
```
terraform workspace list 
```

## Create workspace 
```
terraform workspace new sbx
terraform workspace new prod 
terraform workspace new dev
```
## show to specify workspace 
```
terraform workspace show
```
## create the tfvars
```sh
touch sbx.tfvars dev.tfvars prod.tfvars
```
## switch workspace
```
terraform workspace select dev
```
how do we run plan in this approach 
# NOTE
```
terraform workspace show 
terraform plan -var-file sbx.tfvars
```

## Unlock state file
```
terraform force-unlock 1242dd39-cd2c-9b3a-7d5b-212b1331912c
```

## To Destroy 
```
terraform workspace select sbx 
terraform destroy -var-file sbx.tfvars
```

## To Connect to app1
```
b3tahands.com/app1
```

## To Connect to app12
```
b3tahands.com/app2
```

## Connect to Registration app 

```
kelderanyi.com
```
password 
```
username: kojitechs 
password: password101
```

## Connect To Database on Registration-app-1 instances via ssm fleet manager 
```
mysql -h enpoint -u kojitechs -p
show databases;
use webappdb;
show schemas;
show user;
select * from user;
```
