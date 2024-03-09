#!/usr/bin/env bash
mkdir -p .build/{checkouts,repositories}
cd .build/repositories || exit 1
mkdir -p CollectionConcurrencyKit-9b263e6b CryptoSwift-72c2bbc7 SourceKitten-45a013ca swift-argument-parser-59ba1edd swift-syntax-cb9339b1 SwiftyTextTable-dce42391 SWXMLHash-0bda306e Yams-00fc82b0
mkdir -p CollectionConcurrencyKit-e8d5854d CryptoSwift-02302490 SourceKitten-8ccd7df5 swift-argument-parser-54a11a8d swift-syntax-463e60c9 SwiftyTextTable-cca6ebd7 SWXMLHash-ff0954f2 Yams-fd9f2519
cd ..
cp -R ../{CollectionConcurrencyKit,CryptoSwift,SourceKitten,swift-argument-parser,swift-syntax,SwiftyTextTable,SWXMLHash,Yams} checkouts
cd checkouts || exit 1
cp -Rv CollectionConcurrencyKit/.git/* ../repositories/CollectionConcurrencyKit-9b263e6b
cp -Rv CollectionConcurrencyKit/.git/* ../repositories/CollectionConcurrencyKit-e8d5854d
cp -Rv CryptoSwift/.git/* ../repositories/CryptoSwift-72c2bbc7
cp -Rv CryptoSwift/.git/* ../repositories/CryptoSwift-02302490
cp -Rv SourceKitten/.git/* ../repositories/SourceKitten-45a013ca
cp -Rv SourceKitten/.git/* ../repositories/SourceKitten-8ccd7df5
cp -Rv swift-argument-parser/.git/* ../repositories/swift-argument-parser-59ba1edd
cp -Rv swift-argument-parser/.git/* ../repositories/swift-argument-parser-54a11a8d
cp -Rv swift-syntax/.git/* ../repositories/swift-syntax-cb9339b1
cp -Rv swift-syntax/.git/* ../repositories/swift-syntax-463e60c9
cp -Rv SwiftyTextTable/.git/* ../repositories/SwiftyTextTable-dce42391
cp -Rv SwiftyTextTable/.git/* ../repositories/SwiftyTextTable-cca6ebd7
cp -Rv SWXMLHash/.git/* ../repositories/SWXMLHash-0bda306e
cp -Rv SWXMLHash/.git/* ../repositories/SWXMLHash-ff0954f2
cp -Rv Yams/.git/* ../repositories/Yams-00fc82b0
cp -Rv Yams/.git/* ../repositories/Yams-fd9f2519
cd ../..
patch Package.swift swiftlint.patch || exit
