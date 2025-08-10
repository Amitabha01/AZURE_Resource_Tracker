# Azure Resource Tracker 🚀

A powerful bash script for tracking and reporting Azure cloud resources with automated output generation.

## 📋 Overview

The Azure Resource Tracker is a comprehensive monitoring tool that generates detailed reports of your Azure cloud infrastructure. It provides insights into virtual machines, storage accounts, Azure functions, and user accounts in a structured format.

## ✨ Features

- **Multi-Resource Monitoring**: Tracks VMs, Storage Accounts, Functions, and Users
- **Automated Reporting**: Generates timestamped reports in the `outputs/` directory  
- **JSON Formatted Output**: Clean, parseable user data using `jq`
- **Error Handling**: Built-in error detection and pipeline failure protection
- **Debug Mode**: Comprehensive logging for troubleshooting

## 🛠 Prerequisites

Before running this script, ensure you have:

1. **Azure CLI** installed and configured
   ```bash
   # Install Azure CLI (Ubuntu/Debian)
   curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
   
   # Login to Azure
   az login
   ```

2. **jq** for JSON processing
   ```bash
   # Install jq (Ubuntu/Debian)
   sudo apt-get install jq
   ```

3. **Proper Azure Permissions**
   - Reader access to subscription resources
   - User.Read.All permission for Azure AD user listing

## 📁 Project Structure

```
az_resource_tracker_project/
├── az_resource_tracker.sh      # Main script file
├── README.md                   # Documentation
└── outputs/                    # Report output directory
    └── outputof_resourcetracker # Generated reports
```

## 🚀 Usage

### Basic Execution

Make the script executable and run:

```bash
chmod +x az_resource_tracker.sh
./az_resource_tracker.sh
```

### Scheduled Execution

Add to crontab for automated daily reports:

```bash
# Edit crontab
crontab -e

# Add entry for daily execution at 8 AM
0 8 * * * /path/to/az_resource_tracker.sh
```

## 📊 Generated Reports

The script generates comprehensive reports including:

### 1. **Storage Accounts**
- Account names and resource groups
- Performance tiers and replication settings
- Access configurations

### 2. **Virtual Machines**
- VM names, sizes, and locations
- Power states and OS information
- Network configurations

### 3. **Azure Functions**
- Function app names and resource groups
- Runtime versions and hosting plans
- Configuration settings

### 4. **Azure AD Users**
- User IDs and display names
- Email addresses (User Principal Names)
- Clean JSON formatting

## ⚙️ Configuration Options

### Environment Variables

Set these environment variables for customization:

```bash
# Custom output directory
export OUTPUT_DIR="./custom_reports"

# Custom output filename
export OUTPUT_FILENAME="azure_resources_$(date +%Y%m%d)"
```

### Script Modifications

The script includes several configurable options:

- **Debug Mode**: `set -x` for verbose output
- **Error Handling**: `set -e` for immediate exit on errors
- **Pipeline Failure Protection**: `set -o pipefail`

## 🔧 Troubleshooting

### Common Issues

1. **Azure CLI Not Authenticated**
   ```bash
   az login --use-device-code
   ```

2. **Permission Denied Errors**
   ```bash
   chmod +x az_resource_tracker.sh
   ```

3. **jq Command Not Found**
   ```bash
   sudo apt-get update && sudo apt-get install jq
   ```

4. **Output Directory Issues**
   ```bash
   mkdir -p outputs
   ```

### Debug Mode

The script runs in debug mode by default. To disable:

```bash
# Comment out the debug line
# set -x
```

## 📈 Output Format

Reports are generated with timestamps and include:

```
Azure Resource Report - Sun Aug 10 10:30:45 UTC 2025
=================
[Storage Account Details...]
[VM Details...]
[Function App Details...]
[User Details in JSON format...]
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature-name`
3. Commit changes: `git commit -am 'Add feature'`
4. Push to branch: `git push origin feature-name`
5. Submit a Pull Request

## 📝 Version History

- **v1.0** (August 2025) - Initial release
  - Basic Azure resource tracking
  - Multi-resource support
  - Automated report generation

## 👤 Author

**Amitabha**
- Creation Date: August 9, 2025
- Version: v1

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🙏 Acknowledgments

- Azure CLI team for excellent tooling
- jq developers for JSON processing capabilities
- Open source community for continuous inspiration

---

*For questions or support, please open an issue in the repository.*