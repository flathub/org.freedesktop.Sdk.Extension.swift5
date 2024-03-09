#!/usr/bin/env bash
mkdir -p .build/{checkouts,repositories}
cd .build/repositories || exit 1
mkdir -p swift-argument-parser-54a11a8d swift-syntax-463e60c9 swift-markdown-6b045e7c swift-cmark-7ac81116
cd ..
cp -R ../{swift-argument-parser,swift-syntax,swift-markdown,swift-cmark} checkouts
cd checkouts || exit 1
cp -Rv swift-argument-parser/.git/* ../repositories/swift-argument-parser-54a11a8d/
cp -Rv swift-syntax/.git/* ../repositories/swift-syntax-463e60c9/
cp -Rv swift-markdown/.git/* ../repositories/swift-markdown-6b045e7c/
cp -Rv swift-cmark/.git/* ../repositories/swift-cmark-7ac81116/
