aws cloudformation deploy --template-file cloudformation-nolimiting.yml --stack-name limiting-test-nolimit --capabilities CAPABILITY_IAM
aws cloudformation deploy --template-file cloudformation-lambdalimit.yml --stack-name limiting-test-lambdalimit --capabilities CAPABILITY_IAM
aws cloudformation deploy --template-file cloudformation-aglimit.yml --stack-name limiting-test-aglimit --capabilities CAPABILITY_IAM
