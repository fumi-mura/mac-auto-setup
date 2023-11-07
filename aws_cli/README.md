# Setting aws cofigure

```sh
$ aws configure
AWS Access Key ID [None]: [Access key ID]
AWS Secret Access Key [None]: [Secret access key ID]
Default region name [None]: [Your region]
Default output format [None]:
```

# Change aws cli version

<!-- if you change v2 to v1 -->

```sh
$ brew install awscli@1
$ brew unlink awscli
$ brew link awscli@1
```
