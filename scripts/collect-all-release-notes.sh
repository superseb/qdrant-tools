#!/usr/bin/env bash
function generate_markdown_link()
{
    local release=$1
    release_link=$(echo $patch | tr '[:upper:]' '[:lower:]' | sed -e 's/ /-/g' -e 's/\.//g' -e 's/+//g')
    echo "${release_link}"
}

function ghretry()
{
    until gh "$@"; do
	>&2 echo "Failure during gh command, sleeping 10"
        sleep 10
    done
}

> release-notes/README.md
echo "# Qdrant" >> release-notes/README.md
for minor in v1.12 v1.11 v1.10 v1.9 v1.8 v1.7 v1.6 v1.5 v1.4 v1.3 v1.2 v1.1 v1.0; do
    product=qdrant
    > release-notes/${product}-${minor}.md
    qdrantversiontmp=$(mktemp)
    echo "| Version | Date | US date | EU date |" >> $qdrantversiontmp
    echo "| ------- | ---- | ------- | ------- |" >> $qdrantversiontmp
    for patch in $(ghretry release list -R "qdrant/${product}" --exclude-drafts --exclude-pre-releases --limit=1000 | awk -F '\t' '{ print $3 }' | grep ^"${minor}\."); do
        publish_date=$(ghretry release view "${patch}" -R "qdrant/${product}" --json publishedAt -q '.publishedAt' | awk -F'T' '{ print $1 }')
        echo "| [${patch}](${product}-${minor}.md#release-$(generate_markdown_link $patch)) | $(date +"%b %d %Y" -d "${publish_date}") | $(date +"%D" -d "${publish_date}") | $(date +"%F" -d "${publish_date}") |" >> $qdrantversiontmp
        echo "# Release ${patch}" >> release-notes/${product}-${minor}.md
        ghretry release view "${patch}" -R "qdrant/${product}" --json body -q '.body' >> release-notes/${product}-${minor}.md
        echo "-----" >> release-notes/${product}-${minor}.md
    done
    echo -e "\n\n" >> $qdrantversiontmp
    qdranttmp=$(mktemp)
    cat $qdrantversiontmp release-notes/${product}-${minor}.md > $qdranttmp && mv $qdranttmp release-notes/${product}-${minor}.md
    cat $qdrantversiontmp >> release-notes/README.md
    echo -e "\n" >> release-notes/README.md
done
