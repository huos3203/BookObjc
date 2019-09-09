#! /bin/sh
#
# mobi.sh
# Copyright (C) 2019 admin <admin@bogon>
#
# Distributed under terms of the MIT license.

## 生成网页
gitbook build ./ ./docs/objccn
## 生成图书
mv SUMMARY.md SUMMARY_tmp.md
mv SUMMARY-book.md SUMMARY.md
gitbook mobi ./ ../../docs/mobi/objccn.mobi
mv SUMMARY.md SUMMARY-book.md
mv SUMMARY_tmp.md SUMMARY.md

