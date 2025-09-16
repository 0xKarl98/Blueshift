# Blueshift sBPF Assembly Project

> A Solana sBPF Assembly program created with [blueshift-gg/sbpf](https://github.com/blueshift-gg/sbpf)

This project completes the Assembly Memo challenge from [Blueshift Learning Platform](https://learn.blueshift.gg/en/challenges/assembly-memo/verify).

## 🚀 Quick Start

### Prerequisites

- [Solana CLI](https://docs.solana.com/cli/install-solana-cli-tools) installed
- [sbpf CLI tool](https://github.com/blueshift-gg/sbpf) installed
- Rust and Cargo (for testing)

### Installation

```bash
# Install sbpf CLI tool
cargo install --git https://github.com/blueshift-gg/sbpf.git
```

## 🧪 Testing

Run the test suite to verify the program functionality:

```bash
cargo test
```

## 🚀 Deployment

### Step 1: Start Local Test Validator (for Local Development)

If you're developing locally, start the test validator first:

```bash
# Start local test validator (run in a separate terminal)
solana-test-validator
```

### Step 2: Configure Solana CLI

After 1 , go to another terminal for devnet deployment:
```bash
solana config set --url devnet
```

# Verify configuration
solana config get
```

### Step 3: Fund Your Wallet

Ensure your wallet has sufficient SOL for deployment:

For local development:
```bash
# Request local SOL airdrop
solana airdrop 2
```

For devnet:
```bash
# Request devnet SOL airdrop (up to 5 SOL per request)
solana airdrop 2
```

Check your balance:
```bash
solana balance
```

### Step 4: Build the Program

Before deploying, you need to build the program:

```bash
# Build the sBPF program
sbpf build
```

### Step 5: Deploy the Program

```bash
# Deploy the program
sbpf deploy
```

## 📚 Resources

- [Blueshift Learning Platform](https://learn.blueshift.gg/)
- [sBPF Assembly Documentation](https://www.helius.dev/blog/sbpf-assembly)
- [Solana Documentation](https://docs.solana.com/)
- [sbpf CLI Repository](https://github.com/blueshift-gg/sbpf)


