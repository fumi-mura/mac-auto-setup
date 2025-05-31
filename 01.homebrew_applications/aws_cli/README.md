# Change aws cli version

<!-- if you change v2 to v1 -->

```sh
$ brew install awscli@1
$ brew unlink awscli
$ brew link awscli@1
```

# Setting aws cofigure

## Single aws account

```sh
$ aws configure
AWS Access Key ID [None]: [Access key ID]
AWS Secret Access Key [None]: [Secret access key]
Default region name [None]: [your region]
Default output format [None]:
```

## Multi aws accounts

```sh
$ vi ~/.aws/credentials
[accountA]
aws_access_key_id = {Access key ID}
aws_secret_access_key = {Secret access key}

[accountB]
aws_access_key_id = {Access key ID}
aws_secret_access_key = {Secret access key}
```
```sh
$ vi ~/.aws/config
[default]
region = {your region}
```

## Use case

```sh
$ aws s3 ls --profile accountA
```
