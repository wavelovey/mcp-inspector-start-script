#!/bin/bash

# Create app directory
mkdir -p ~/Applications/MCPInspector.app/Contents/MacOS/

# Create the executable script
cat > ~/Applications/MCPInspector.app/Contents/MacOS/MCPInspector << 'EOF'
#!/bin/bash
osascript -e 'tell application "Terminal" to do script "npx @modelcontextprotocol/inspector"'
EOF

# Make it executable
chmod +x ~/Applications/MCPInspector.app/Contents/MacOS/MCPInspector

# Create Info.plist
cat > ~/Applications/MCPInspector.app/Contents/Info.plist << 'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>CFBundleExecutable</key>
    <string>MCPInspector</string>
    <key>CFBundleIconFile</key>
    <string>AppIcon</string>
    <key>CFBundleIdentifier</key>
    <string>com.mcpinspector.app</string>
    <key>CFBundleName</key>
    <string>MCP Inspector</string>
    <key>CFBundlePackageType</key>
    <string>APPL</string>
    <key>CFBundleShortVersionString</key>
    <string>1.0</string>
</dict>
</plist>
EOF