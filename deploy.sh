echo "HEY TRAVIS"

curl -i -X PUT -H "Authorization: token $COMMIT_TOKEN" -d '{"path": "test1.txt", "message": "Some Commit", "committer": {"name": "John Bradley", "email": "johnbradley2008@gmail.com"}, "content": "SEVZIHRoZXJlIGdpdGh1Ygo=", "branch": "master"}' https://api.github.com/repos/johnbradley/test-target-repo/contents/test1.txt
