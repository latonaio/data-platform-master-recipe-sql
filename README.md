# data-platform-master-recipe-sql

data-platform-master-recipe-sql は、主にエッジアプリケーションにおいて、data-platform と連携されたマスタレシピデータを保存する SQL テーブルを作成するためのレポジトリです。  
data-platform-master-recipe-sql は、そのままクラウド環境におけるアプリケーションにも、適用可能です。

## 前提条件

data-platform-master-recipe-sql は、SQL の data-platform とのデータ連携にあたり、オンプレミス版である（＝クラウド版ではない）data-platformS4HANA API の利用を前提としています。クラウド版 API を利用する場合は、ご注意ください。  
https://api.data-platform.com/api/OP_API_MASTER_RECIPE_0001/overview  
本レポジトリ の sql 設定ファイルの内容は、上記 URL の API 仕様を前提としています。

## sql の設定ファイル

data-platform-master-recipe-sql には、sql の設定ファイルとして以下の sql ファイルが含まれています。

- master-recipe-sql-header-data.sql（データ連携基盤 マスタレシピ - ヘッダデータ）
- master-recipe-sql-header-doc-data.sql（データ連携基盤 マスタレシピ - ヘッダ文書データ）
- master-recipe-sql-product-assignment-data.sql（データ連携基盤 マスタレシピ - 品目割当データ）
- master-recipe-sql-operation-data.sql（データ連携基盤 マスタレシピ - 作業データ）
- master-recipe-sql-food-working-parameters-data.sql（データ連携基盤 マスタレシピ - 食品パラメータデータ）


## MySQL のセットアップ / Kubernetes の設定 / SQL テーブルの作成方法

MySQL のセットアップ / Kubernetes の設定 / 具体的な SQL テーブルの作成方法、については、[mysql_kube](https://github.com/latonaio/mysql_kube)を参照ください。

