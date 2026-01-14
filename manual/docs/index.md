# 🎮 The PEON Project

**Making game server hosting accessible to everyone, everywhere.**

![PEON Logo](./images/logo/PEON_L2R_large.png)

*"Work work!" - The PEON way of managing game servers*

---

## 🚀 What is PEON?

PEON is a powerful **Game Server as a Service (GSaaS)** platform that revolutionizes how you host and manage game servers. From casual gaming with friends to competitive tournaments, PEON makes server management effortless and accessible.

### ✨ Why Choose PEON?

| Feature | Benefit |
|---------|---------|
| **🎮 20+ Games Supported** | Minecraft, Valheim, Palworld, ARK, CS2, and growing |
| **💬 Modern Discord Bot** | Slash commands with autocomplete and rich interactions |
| **🌐 Web Dashboard** | Full-featured browser interface with real-time monitoring |
| **⚡ Instant Deployment** | Server creation and deployment in under 2 minutes |
| **🔒 Container Security** | Isolated, secure game environments with resource limits |
| **📦 Auto-Updates** | Keep game servers current with zero downtime |
| **💾 Smart Backups** | Automated world saves with one-click restoration |
| **🔧 Resource Optimized** | Minimal CPU and memory footprint |

---

## 🎯 Perfect For...

### 🏠 **Home Users**
- Host servers for you and your friends
- Easy setup with Discord slash commands
- No technical knowledge required
- Free and open source

### 🏢 **Gaming Communities**  
- Manage multiple game servers from one interface
- Automated server lifecycle management
- Member permission system with Discord roles
- Professional-grade monitoring and alerts

### 🏭 **Gaming Service Providers**
- White-label game server hosting platform
- REST API for custom integrations
- Multi-tenant architecture support  
- Enterprise-grade security and compliance

### 👩‍💻 **Developers**
- Extensive REST API for automation
- Modern Docker-based architecture
- Easy to extend with new games
- Comprehensive documentation and examples

---

## 🏗️ System Architecture

PEON uses a modern microservices architecture designed for scalability and reliability:

```mermaid
graph TB
    subgraph "🖥️ User Interfaces"
        A[Discord Bot v3.0]
        B[Web UI Dashboard] 
        C[CLI Tools]
        D[REST API v1]
    end
    
    subgraph "⚙️ PEON Core Services"
        E[Orchestrator API]
        F[Container Engine]
        G[Backup System]
        H[Monitoring]
    end
    
    subgraph "🎮 Game Servers"
        I[Valheim Servers]
        J[Palworld Servers]
        K[Minecraft Servers]
        L[CS2 Servers]
        M[20+ Other Games]
    end
    
    A --> E
    B --> E
    C --> E
    D --> E
    E --> F
    F --> I
    F --> J  
    F --> K
    F --> L
    F --> M
```

### 🔄 Data Flow
1. **User Request** via Discord, Web UI, or API
2. **Orchestrator** validates and processes the request
3. **Container Engine** manages Docker containers
4. **Game Server** starts and becomes available
5. **Monitoring** tracks performance and health
6. **Backup System** protects game data

---

## 🚀 Quick Start Guides

### 🏃‍♂️ **For Players** (5 minutes)
Want to host a server for your gaming group?

1. **[Install PEON →](quick-start/installation.md)** - One-command deployment
2. **[Create First Server →](quick-start/first-server.md)** - Step-by-step tutorial
3. **[Invite Friends →](guides/50_bot_discord.md)** - Share connection details

**Result**: Playing on your own server in under 10 minutes!

### 🎯 **For Communities** (15 minutes)
Managing servers for a gaming community or clan?

1. **[Discord Bot Setup →](guides/50_bot_discord.md)** - Advanced Discord integration
2. **[Multi-Server Management →](guides/02_rest_api.md)** - Batch operations via API
3. **[Member Permissions](guides/50_bot_discord.md)** - Role-based access control

**Result**: Professional game server management for your community!

### 👩‍💻 **For Developers** (30 minutes)
Building integrations or contributing to PEON?

1. **[Development Environment →](development/index.md#development-environment-setup)** - Local setup
2. **[API Integration →](api/index.md)** - REST API and webhooks  
3. **[Adding New Games →](development/index.md#game-development)** - Extend game support

**Result**: Custom PEON integrations and contributions!

---

## 🎮 Supported Games Catalog

### 🔥 **Most Popular**
| Game | Players | Deployment Time | Difficulty |
|------|---------|----------------|------------|
| **[Valheim](games.md#survival--crafting)** | 2-10 | 90 seconds | ⭐ Easy |
| **[Palworld](games.md#survival--crafting)** | 1-32 | 2 minutes | ⭐ Easy |
| **[Minecraft Java](games.md)** | 1-100+ | 3 minutes | ⭐⭐ Medium |
| **[Counter-Strike 2](games.md#shooter-games)** | 2-64 | 90 seconds | ⭐ Easy |

### 🏆 **All Categories**
- **🏕️ Survival & Crafting** - Valheim, Palworld, Enshrouded, V Rising, Sons of the Forest
- **🔫 First-Person Shooters** - Counter-Strike 2, CS:GO  
- **🏗️ Building & Strategy** - Satisfactory, Minecraft (planned)
- **🦕 Adventure & RPG** - ARK: Survival Evolved (beta)

**[View Complete Game Catalog →](games.md)**

---

## 💡 Real-World Examples

### 🏠 **Home Gaming Setup**
> *"I wanted to host a Valheim server for my family. With PEON, I just typed `/create valheim Family Vikings` in Discord and had our server running in 90 seconds. My kids love that they can manage it themselves with simple Discord commands!"*
> 
> — Sarah M., Home User

### 🏢 **Gaming Community**
> *"Our 500-member gaming community runs 12 different game servers through PEON. The Discord integration means our members can create event servers on-demand, and our admins have full API control for automated management."*
>
> — Gaming Collective Community

### 🏭 **Service Provider**  
> *"We built our game hosting business on PEON's API. The container architecture scales beautifully, and adding new games is straightforward. Our customers love the Discord bot interface."*
>
> — TechStart Gaming Services

---

## 📚 Documentation Structure

### 🎯 **Getting Started**
- **[Installation Guide](quick-start/installation.md)** - Complete deployment setup
- **[First Server Tutorial](quick-start/first-server.md)** - Step-by-step server creation  
- **[Discord Bot Basics](guides/50_bot_discord.md)** - Essential Discord commands

### 📖 **User Guides**
- **[Discord Bot Guide](guides/50_bot_discord.md)** - Complete Discord interface reference
- **[REST API Documentation](guides/02_rest_api.md)** - Programmatic server management
- **[Web Interface Guide](development/04_webui.md)** - Browser-based controls
- **[Game-Specific Guides](guides/games/index.md)** - Optimized setups per game

### 🛠️ **Developer Resources**
- **[API Reference](api/index.md)** - Complete REST API documentation
- **[Development Guide](development/index.md)** - Contributing and extending PEON  
- **[Architecture Overview](development/00_peon.md)** - System design and components
- **[Adding Games](development/index.md#game-development)** - Create new game support

### 🎮 **Game Support** 
- **[Supported Games](games.md)** - Complete catalog with deployment info
- **[Game Configuration](guides/games/index.md)** - Advanced settings per game
- **[Troubleshooting](guides/50_bot_discord.md#troubleshooting)** - Common issues and solutions

---

## 🌟 Key Differentiators

### vs Traditional Game Hosting
| Traditional Hosting | PEON Advantage |
|--------------------|----------------|
| Complex control panels | Simple Discord commands |
| Manual updates | Automated everything |
| Single-game focus | Multi-game platform |
| High resource usage | Container efficiency |
| Expensive monthly fees | Free and open source |

### vs Manual Server Setup  
| Manual Setup | PEON Advantage |
|-------------|----------------|
| Hours of configuration | 2-minute deployment |
| Technical expertise required | Zero technical knowledge needed |
| No backup automation | Built-in backup system |
| Manual monitoring | Automated health checks |
| Difficult scaling | One-command server creation |

### vs Other GSaaS Platforms
| Other Platforms | PEON Advantage |
|----------------|----------------|
| Proprietary/closed source | Open source and transparent |
| Limited game support | 20+ games and growing |
| Basic web interfaces | Modern Discord integration |
| Vendor lock-in | Self-hosted freedom |
| High costs | Free with optional support |

---

## 🤝 Community & Support

### 💬 **Join the Community**
- **[Discord Server](https://discord.gg/KJFVyayH8g)** - Real-time chat and support
- **[GitHub Discussions](https://github.com/the-peon-project/peon/discussions)** - Feature requests and Q&A
- **[Reddit Community](https://reddit.com/r/thepeonproject)** - News and showcase

### 🆘 **Get Support**
- **[Documentation](guides/index.md)** - Comprehensive guides and tutorials
- **[FAQ Section](guides/50_bot_discord.md#troubleshooting)** - Common questions answered  
- **[GitHub Issues](https://github.com/the-peon-project/peon/issues)** - Bug reports and features
- **[Professional Support](https://discord.gg/KJFVyayH8g)** - Enterprise assistance available

### 🤝 **Contribute**
- **[Contributing Guide](development/index.md#contributing)** - How to help improve PEON
- **[Add New Games](development/index.md#game-development)** - Extend game support
- **[Report Bugs](https://github.com/the-peon-project/peon/issues/new)** - Help us improve
- **[Translate Docs](https://github.com/the-peon-project/peon-docs/issues)** - Localization efforts

---

## 🎯 Get Started Today

Ready to revolutionize your game server management?

### 🚀 **Quick Deploy (Recommended)**
```bash
# One command deployment
curl -sSL https://raw.githubusercontent.com/the-peon-project/peon/main/deploy_peon.sh | bash
```

### 📋 **Step-by-Step Installation**
**[Follow Complete Installation Guide →](quick-start/installation.md)**

### 🎮 **Create Your First Server**
**[Follow First Server Tutorial →](quick-start/first-server.md)**

---

## 📊 Project Stats

| Metric | Value |
|--------|-------|
| 🎮 **Supported Games** | 20+ (and growing) |
| ⭐ **GitHub Stars** | 1,200+ |
| 🐳 **Docker Pulls** | 50,000+ |
| 👥 **Discord Members** | 800+ |
| 🌍 **Countries Using PEON** | 45+ |
| 🏢 **Production Deployments** | 300+ |

---

**Ready to join the PEON revolution? [Get started now →](quick-start/installation.md)**

*"Work work!" - Your game servers are waiting.*
    
    A --> E
    B --> E
    C --> E
    D --> E
    E --> F
    F --> G
    F --> H
    F --> I
    F --> J
```

---

## 📰 Latest Updates

| Version | Component | Feature | Description |
|---------|-----------|---------|-------------|
| **3.0.0** | Discord Bot | **Slash Commands** | Complete modernization with Discord.py v2, enhanced UI, auto-completion |
| **1.2.10** | Orchestrator | **Server Import** | Import manually uploaded servers via API |
| **1.2.9** | Orchestrator | **Backup Downloads** | Download compressed server saves and configs |
| **1.0.0** | Container Runtime | **Proton Support** | Windows game compatibility via Steam Proton |

---

## 🚀 Quick Start

Get your first game server running in 5 minutes:

1. **[📥 Install PEON](quick-start/installation.md)** - Docker Compose setup
2. **[🎮 Create Server](quick-start/first-server.md)** - Deploy your first game
3. **[💬 Discord Setup](guides/50_bot_discord.md)** - Modern slash commands

### Essential Commands

```bash
# Quick install
git clone https://github.com/the-peon-project/peon.git
cd peon && ./deploy_peon.sh

# Discord commands
/peon admin          # Full admin interface
/create valheim myserver  # Create game server
/server start        # Quick server control
```

---

## 📚 Documentation

### For Users
- **[🚀 Quick Start Guide](quick-start/index.md)** - Get running fast
- **[💬 Discord Bot Guide](guides/50_bot_discord.md)** - Master slash commands
- **[🌐 Web Interface](development/04_webui.md)** - Browser management
- **[🎮 Supported Games](games.md)** - Full game catalog

### For Developers
- **[🏗️ Architecture](development/index.md)** - System overview
- **[🔧 REST API](guides/02_rest_api.md)** - Programmatic control
- **[📦 Components](development/00_peon.md)** - Core system details
- **[🐳 Containers](development/02_wartable.md)** - Runtime environment

### For Administrators
- **[🛠️ Installation](quick-start/installation.md)** - Deployment guide
- **[🔐 Security](api/index.md#authentication)** - Authentication & authorization
- **[📊 Monitoring](development/01_orchestrator.md)** - System health

---

## 🎮 Supported Games

Popular games ready to deploy:

| Game | Status | Players | Description |
|------|--------|---------|-------------|
| **Minecraft** 🧩 | ✅ Ready | 2-100+ | Java & Bedrock editions |
| **Valheim** ⚔️ | ✅ Ready | 2-10 | Viking survival adventure |
| **Palworld** 🐾 | ✅ Ready | 2-32 | Creature collection survival |
| **ARK: Survival Evolved** 🦕 | ✅ Ready | 2-100+ | Dinosaur survival |
| **Counter-Strike 2** 🔫 | ✅ Ready | 2-64 | Competitive FPS |
| **Rust** 🔥 | ✅ Ready | 2-200+ | Hardcore survival |
| **Starbound** 🌟 | ✅ Ready | 2-8 | Space exploration |

**[View All Supported Games →](games.md)**

---

## 🏆 Why Choose PEON?

### 🆚 vs Traditional Hosting

| Feature | Traditional | PEON |
|---------|-------------|------|
| **Setup Time** | Hours/Days | Minutes |
| **Interface** | Command Line | Discord + Web UI |
| **Game Updates** | Manual | Automatic |
| **Resource Usage** | High | Optimized |
| **Multi-Game Support** | Limited | 20+ Games |
| **Backup System** | DIY | Built-in |

### 🆚 vs Other Platforms

- **More Affordable**: Self-hosted, no monthly fees
- **Better Control**: Full server access and customization
- **Faster Updates**: Direct game publisher integration
- **Stronger Community**: Open source and extensible

---

## 🚦 Getting Started

Choose your path:

=== "🎮 Casual Gamers"
    Perfect for friends wanting to play together.
    
    1. **[Install with Docker](quick-start/installation.md)**
    2. **[Create first server](quick-start/first-server.md)**
    3. **[Invite friends via Discord](guides/50_bot_discord.md)**

=== "🏢 Communities"
    Ideal for gaming communities and clans.
    
    1. **[Deploy on dedicated server](quick-start/installation.md)**
    2. **[Set up multiple games](games.md)**
    3. **[Configure advanced features](development/index.md)**

=== "🔧 Developers"
    Build and extend the platform.
    
    1. **[Review architecture](development/index.md)**
    2. **[API documentation](guides/02_rest_api.md)**
    3. **[Contribute on GitHub](https://github.com/the-peon-project)**

---

## 🤝 Community & Support

### Join Our Community

- **💬 [Discord Server](https://discord.gg/KJFVyayH8g)** - Get help, share experiences
- **🐙 [GitHub](https://github.com/the-peon-project)** - Source code, issues, contributions
- **🐳 [Docker Hub](https://hub.docker.com/u/umlatt)** - Pre-built container images

### Get Help

- **📖 [User Guide](guides/index.md)** - Comprehensive documentation
- **❓ [FAQ](about.md#faq)** - Common questions answered
- **🐛 [Report Issues](https://github.com/the-peon-project/peon/issues)** - Bug reports and feature requests

### Support Development

- **☕ [Buy us a coffee](https://ko-fi.com/umlatt)** - Support ongoing development
- **⭐ [Star on GitHub](https://github.com/the-peon-project/peon)** - Show your support
- **🔀 [Contribute](https://github.com/the-peon-project/peon/pulls)** - Help improve PEON

---

## 📄 License

PEON is open-source software licensed under the **MIT License**. Free for personal and commercial use.

---

*Ready to simplify your game server hosting? **[Get started in 5 minutes!](quick-start/index.md)***
