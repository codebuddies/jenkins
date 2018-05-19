#!/bin/bash
cat > Dockerfile << EOF
FROM codebuddiesdotorg/codebuddies:PR_$PR
EOF

#now --token $NOW_TOKEN --name codebuddies-$PR -e MONGO_URL=@mongo_url -e METEOR_SETTINGS=@meteor_settings -e ROOT_URL=https://codebuddies-$PR.now.sh --public
URL=$(now ls --token $NOW_TOKEN | grep $PR)
RESULT=$(echo "$URL" | sed "s/.*\(codebuddies-$PR-.*\.sh\)\s.*/\1/")

echo $URL

echo $RESULT