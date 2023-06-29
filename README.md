# data-platform-product-master-sql
data-platform-product-master-sql は、データ連携基盤において、品目マスタデータを維持管理するSQLテーブルを作成するためのレポジトリです。

## 前提条件
data-platform-product-master-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview  

## sql の設定ファイル
data-platform-product-master-sql には、sql の設定ファイルとして以下の sql ファイルが含まれています。

* data-platform-product-master-sql-general-data.sql（データ連携基盤 品目マスタ - 基本データ）
* data-platform-product-master-sql-product-description-data.sql（データ連携基盤 品目マスタ - 品目テキストデータ）
* data-platform-product-master-sql-general-doc-data.sql（データ連携基盤 品目マスタ - 基本文書データ）
* data-platform-product-master-sql-business-partner-data.sql（データ連携基盤 品目マスタ - ビジネスパートナデータ）
* data-platform-product-master-sql-product-description-by-business-partner-data.sql（データ連携基盤 品目マスタ - ビジネスパートナ品目テキストデータ）
* data-platform-product-master-sql-bp-plant-data.sql（データ連携基盤 品目マスタ - ビジネスパートナプラントデータ）
* data-platform-product-master-sql-bp-plant-doc-data.sql（データ連携基盤 品目マスタ - ビジネスパートナプラント文書データ）
* data-platform-product-master-sql-storage-location-data.sql （データ連携基盤 品目マスタ - 保管場所データ）
* data-platform-product-master-sql-storage-bin-data.sql（データ連携基盤 品目マスタ - 棚番データ）
* data-platform-product-master-sql-mrp-area-data.sql（データ連携基盤 品目マスタ - MRPエリアデータ）
* data-platform-product-master-sql-production-data.sql（データ連携基盤 品目マスタ - 製造データ）
* data-platform-product-master-sql-quality-data.sql（データ連携基盤 品目マスタ - 品質データ）
* data-platform-product-master-sql-tax-data.sql（データ連携基盤 品目マスタ - 税データ）
* data-platform-product-master-sql-accounting-data.sql （データ連携基盤 品目マスタ - 会計データ）
* data-platform-product-master-sql-allergen-data.sql（データ連携基盤 品目マスタ - アレルゲンデータ）
* data-platform-product-master-sql-nutritional-info-data.sql（データ連携基盤 品目マスタ - 栄養成分データ）
* data-platform-product-master-sql-calories-data.sql（データ連携基盤 品目マスタ - 熱量データ）


## MySQL のセットアップ / Kubernetes の設定 / SQL テーブルの作成方法
MySQL のセットアップ / Kubernetes の設定 / 具体的な SQL テーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。
