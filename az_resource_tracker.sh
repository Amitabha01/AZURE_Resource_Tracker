#!/bin/bash


###############################################
# Author: Amitabha
# Date: 09/08/2025
#
# Version: v1
#
# This script will report the AZURE resource usage
##############################################

set -x   # Debug mode
set -e   # Exit immidiately if error
set -o pipefail   # If any pipeline fail

# AZURE vm
# AZURE Storage Accounts
# AZURE Functions
# AZURE Users

mkdir -p ./outputs     # Creates output directory/folder if does't exist

OUTPUT_FILE="./outputs/outputof_resourcetracker"

echo "Azure Resource Report - $(date)" > $OUTPUT_FILE
echo "=================" >> $OUTPUT_FILE

# list storage accounts
az storage account list >> $OUTPUT_FILE

# list virtual machines
az vm list >> $OUTPUT_FILE

# list of functions
az functionapp list >> $OUTPUT_FILE

# list of users
az ad user list | jq '.[] | {id: .id, name: .displayName, email: .userPrincipalName}' >> $OUTPUT_FILE

 


