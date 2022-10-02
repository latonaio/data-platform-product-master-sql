# data-platform-product-master-sql
data-platform-product-master-sql は、データ連携基盤において、品目マスタデータを維持管理するSQLテーブルを作成するためのレポジトリです。

## 前提条件
data-platform-product-master-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview  

## sql の設定ファイル
data-platform-product-master-sql には、sql の設定ファイルとして以下の sql ファイルが含まれています。

* data-platform-product-master-sql-general-data.sql（データ連携基盤 品目マスタ - 基本データ）
* data-platform-product-master-sql-business-partner-data.sql（データ連携基盤 品目マスタ - ビジネスパートナデータ）
* data-platform-product-master-sql-bp-plant-data.sql（データ連携基盤 品目マスタ - ビジネスパートナプラントデータ）
* data-platform-product-master-sql-storage-location-data.sql （データ連携基盤 品目マスタ - 保管場所データ）
* data-platform-product-master-sql-sales-delivery-data.sql（データ連携基盤 品目マスタ - 販売出荷データ）
* data-platform-product-master-sql-procurement-data.sql（データ連携基盤 品目マスタ - 購買データ）
* data-platform-product-master-sql-mrp-area-data.sql（データ連携基盤 品目マスタ - MRPエリアデータ）
* data-platform-product-master-sql-work-scheduling-data.sql（データ連携基盤 品目マスタ - 作業計画データ）
* data-platform-product-master-sql-accounting-data.sql （データ連携基盤 品目マスタ - 会計データ）
* data-platform-product-master-sql-product-description-data.sql（データ連携基盤 品目マスタ - 品目テキストデータ）
* data-platform-product-master-sql-sales-tax-data.sql（データ連携基盤 品目マスタ - 販売税データ）

## MySQL のセットアップ / Kubernetes の設定 / SQL テーブルの作成方法
MySQL のセットアップ / Kubernetes の設定 / 具体的な SQL テーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。
