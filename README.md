# Certificate4RDP

A program for applying certificates to Windows Remote Desktop.

## Description
- Converts certificates with a .pem extension issued by Let’s Encrypt and similar providers into the PKCS#12 format used by Windows.
- Installs the certificate into the Windows certificate store and registers it in the registry.

## Usage
1. Write WORKSPACE, CERTFILE, CERTBOT(Current Workspace) to the paths.bat
2. Run run.bat with administrator privileges (the certificate file will be saved as cert.pfx).
3. When the Windows Certificate Manager opens, grant Read permission to the NETWORK SERVICE user.
