# 5700webui-server

| English | Chinese |
|---|---|
| Flutter-based WebUI management application for MT5700M-CN | 基于 Flutter 的 5700 模块 WebUI 管理应用 |

## Key Features | 功能特点
| | |
|---|---|
| - ✅ AT Command Console - Direct communication with the 5700 module | - ✅ AT 命令控制台 - 直接与 5700 模块通信
| - ✅ WebSocket Server - Interface for the web frontend | - ✅ WebSocket 服务器 - 为 Web 前端提供接口
| - ✅ Static HTTP Server - Built-in web management interface | - ✅ HTTP 静态服务器 - 内置 Web 管理界面
| - ✅ WebView Integration - Access the web interface within the app | - ✅ WebView 集成 - 在应用内访问 Web 界面
| - ✅ TCP Direct Connection Mode - Connect to 192.168.8.1:20249 | - ✅ TCP 直连模式 - 连接 192.168.8.1:20249
| - ✅ Dark/Light Themes - TDesign/Ant Design color schemes | - ✅ 深色/浅色主题 - TDesign/Ant Design 配色
| - ✅ Real-time Logs - Auto-scrolling display | - ✅ 实时日志 - 自动滚动显示
| - ✅ Configuration Management - Persistent settings | - ✅ 配置管理 - 持久化设置

## Backend Details | 技术栈
| | |
|---|---|
| - **Framework**: Flutter 3.7+ | - **Framework**: Flutter 3.7+ |
| - **State Management**: GetX | - **状态管理**: GetX |
| - **UI**: Material Design 3 + TDesign color scheme | - **UI**: Material Design 3 + TDesign 配色 |
| - **Networking**: dart:io Socket (TCP), shelf (HTTP/WebSocket) | - **网络**: dart:io Socket (TCP), shelf (HTTP/WebSocket) |
| - **Local Storage**: shared_preferences | - **本地存储**: shared_preferences |

## Getting Started | 快速开始

### Installing APK | 安装 APK
| | |
|---|---|
| Install the compiled APK with shell | 直接安装编译好的 APK（推荐 arm64-v8a 版本）： |

```bash
adb install -r build/app/outputs/flutter-apk/app-arm64-v8a-release.apk
```

### Building From Source | 从源码构建
| | |
|---|---|
| 1. Install the Flutter SDK (3.7+) | 1. 安装 Flutter SDK (3.7+) |
| 2. Clone the project and navigate to the directory | 2. 克隆项目并进入目录 |
| 3. Fetch dependencies and build: | 3. 获取依赖并构建：|

```bash
cd flutter_app
flutter pub get
flutter build apk --release --split-per-abi
```

## APK Size | APK 体积
| | |
|---|---|
| - **Universal**: 52.3 MB | - **通用版**: 52.3 MB (所有架构) |
| - **arm64-v8a**: 19.4 MB (Modern phones; recommended) | - **arm64-v8a**: 19.4 MB (现代手机，推荐) |
| - **armeabi-v7a**: 17.0 MB (Older devices) | - **armeabi-v7a**: 17.0 MB (旧设备) |
| - **x86_64**: 20.6 MB (Emulators) | - **x86_64**: 20.6 MB (模拟器) |

## Using the Interface | 使用说明

### 1. Connect to your MT5700M-CN | 1. 连接设备

| - Open the app and go to the "Settings" page. | - 打开应用，进入"设置"页面 |
| - Configure the TCP connection (default: 192.168.8.1:20249). | - 配置 TCP 连接（默认: 192.168.8.1:20249 |
| - Enable "Auto-connect". | - 启用"自动连接" |

### 2. Sending AT Commands | AT 控制台

| - Enter AT commands on the "AT Console" page | - 在"AT控制台"页面输入 AT 命令 |
| - View real-time responses (auto-scroll to the latest) | - 查看实时响应（自动滚动到最新） |
| - Use quick command buttons | - 使用快捷命令按钮 |

### 3. Web Interface | 3. Web 界面

| - Click the "Web Interface" tab. | - 点击"Web界面"标签 |
| - The app uses an embedded WebView to access the management interface. | - 应用内嵌 WebView 访问管理界面 |
| - The WebSocket server runs on port 8765. | - WebSocket 服务器运行在 8765 端口 |

## Configuration | 配置说明

| - **TCP Address**: 192.168.8.1:20249 (MT5700M-CN default) | - **TCP 地址**: 192.168.8.1:20249 (5700 模块默认) |
| - **WebSocket Port**: 8765 | - **WebSocket 端口**: 8765 |
| - **Theme Mode**: Follow System/Light/Dark | - **主题模式**: 跟随系统/浅色/深色 |

## Application Structure | 项目结构

```
flutter_app/
├── lib/
│   ├── app/
│   │   ├── core/         # 核心配置（主题等）
│   │   ├── data/         # 数据模型
│   │   ├── modules/      # 功能模块
│   │   ├── routes/       # 路由配置
│   │   └── services/     # 服务层（TCP、WebSocket等）
│   └── main.dart
├── assets/
│   └── web/             # 内置 Web 前端
└── android/             # Android 平台配置
```

## ReadMe | 开发指南
| | |
|---|---|
| For details, read | 详见 |
[flutter_app/README.md](flutter_app/README.md)

## License | 许可证

MIT License

## Changelog | 更新日志

### v1.0.0.1 (2026-10-02)
- Added English Translation

### v1.0.0 (2025-10-10)
| - ✅ Initial release | - ✅ 初始版本发布 |
| - ✅ TDesign color system | - ✅ TDesign 配色系统 |
| - ✅ Dark mode support | - ✅ 深色模式支持 |
| - ✅ Auto-scrolling logs | - ✅ 自动滚动日志 |
| - ✅ WebUI integration | - ✅ WebUI 集成 |
| - ✅ Architecture-specific APKs (size optimization) | - ✅ 分架构 APK (体积优化) |
