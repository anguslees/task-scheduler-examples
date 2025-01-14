#!/bin/bash -e

cargo new task-scheduler-rust --vcs none
cd ./task-scheduler-rust

cargo install cargo-edit

# "id.rs"
cargo add rand
cargo add crossbeam

# "notify.rs"
cargo add uuid --features v4
cargo add async-std
cargo add crossbeam-channel

# "echo.rs"
cargo add serde --features derive
cargo add serde_json

# "apply.rs"
# none

# "server.rs"
cargo add http
cargo add futures
cargo add hyper --features full
cargo add tokio --features full

# "main.rs"
cargo add clap@3.0.0-beta.2
