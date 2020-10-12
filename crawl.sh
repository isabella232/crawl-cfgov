#!/usr/bin/env bash
time wget \
    --domains=www.consumerfinance.gov \
    --exclude-domains=files.consumerfinance.gov \
    --execute robots=off \
    --follow-tags=a \
    --limit-rate=200k \
    --random-wait \
    --reject '*.css,*.doc,*.docx,*.epub,*.gif,*.ico,*.jpg,*.js,*.mp3,*.pdf,*.PDF,*.png,*.pptx,*.tmp,*.txt,*.wav,*.woff,*.woff2,*.xls,*xlsx,*.xml,*.zip' \
    --reject-regex "topics=|authors=|categories=|filter_blog_category=|ext_url=|search_field=|issuer_name=" \
    --recursive \
    --level=8 \
    --trust-server-names \
    --no-verbose \
    --no-clobber \
    https://www.consumerfinance.gov/
