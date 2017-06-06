SOURCEFILENAME="DukeDSClient.spec"
TARGETFILENAME="testc.txt"
COMMITMSG="DukeDSClient update"
COMMITUSER="John Bradley"
COMMITEMAIL="johnbradley2008@gmail.com"
COMMITBRANCH="master"
BASE64CONTENT=`base64 $SOURCEFILENAME`
echo $BASE64CONTENT
 
# Upload file to another repo
curl -i -X PUT -H "Authorization: token $COMMIT_TOKEN" \
   -d "{ \"path\": \"$TARGETFILENAME\", \
        \"message\": \"$COMMITMSG\", \
        \"committer\": {\"name\": \"$COMMITUSER\", \"email\": \"$COMMITEMAIL\"}, \
        \"content\": \"$BASE64CONTENT\", \
        \"branch\": \"$COMMITBRANCH\"}" \
    https://api.github.com/repos/johnbradley/test-target-repo/contents/$TARGETFILENAME
