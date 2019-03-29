NOLIMIT_URL=$(aws cloudformation describe-stacks --stack-name limiting-test-nolimit | jq -r '.Stacks[0].Outputs[] | select(.OutputKey == "URL") | .OutputValue') 
LAMBDALIMIT_URL=$(aws cloudformation describe-stacks --stack-name limiting-test-lambdalimit | jq -r '.Stacks[0].Outputs[] | select(.OutputKey == "URL") | .OutputValue') 
AGLIMIT_URL=$(aws cloudformation describe-stacks --stack-name limiting-test-aglimit | jq -r '.Stacks[0].Outputs[] | select(.OutputKey == "URL") | .OutputValue') 

echo "Running test for the nolimit case"
npx artillery quick -r 5 -d 5 $NOLIMIT_URL
echo "Running test for the Lambda limit case"
npx artillery quick -r 5 -d 5 $LAMBDALIMIT_URL
echo "Running test for the API GW limit case"
npx artillery quick -r 5 -d 5 $AGLIMIT_URL
