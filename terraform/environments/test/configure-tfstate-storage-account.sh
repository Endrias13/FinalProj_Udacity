#!/bin/bash

set -e
trap 'catchError' ERR

catchError() {
    echo "Error occurred in script at line: $LINENO"
    exit 1
}

RESOURCE_GROUP_NAME="endrias2024_rg_354888"
STORAGE_ACCOUNT_NAME="mystoragefinalproj"
CONTAINER_NAME="tfstate"
LOCATION="East US"

echo "Creating Resource Group: $RESOURCE_GROUP_NAME in $LOCATION"
az group create --name $RESOURCE_GROUP_NAME --location "$LOCATION"

echo "Creating Storage Account: $STORAGE_ACCOUNT_NAME"
az storage account create --resource-group $RESOURCE_GROUP_NAME --name $STORAGE_ACCOUNT_NAME --sku Standard_LRS --encryption-services blob --location "$LOCATION"

echo "Fetching Storage Account Key"
ACCOUNT_KEY=$(az storage account keys list --resource-group $RESOURCE_GROUP_NAME --account-name $STORAGE_ACCOUNT_NAME --query '[0].value' --output tsv)
echo "Storage Account Key: $ACCOUNT_KEY"

echo "Creating Blob Container: $CONTAINER_NAME"
az storage container create --name $CONTAINER_NAME --account-name $STORAGE_ACCOUNT_NAME --account-key $ACCOUNT_KEY


