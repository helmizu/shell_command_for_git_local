#!/bin/sh
git filter-branch --env-filter '
OLD_EMAIL="ardhiyatma_wibawa_25rpl@student.smktelkom-mlg.sch.id"
CORRECT_NAME="Helmi Zulfikar"
CORRECT_EMAIL="helmi.zulfikar20@gmail.com"
if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_COMMITTER_NAME="$CORRECT_NAME"
    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_AUTHOR_NAME="$CORRECT_NAME"
    export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags
