# Neovim Keymaps

Leader: `Space`

## Core (keymaps.lua)

| Key | Mode | Action |
|-----|------|--------|
| `<leader>pv` | Normal | File Explorer (`Ex`) |
| `<leader>sh` | Normal | Split horizontally |
| `<leader>sv` | Normal | Split vertically |
| `<leader>sc` | Normal | Close current window |
| `<Down>` | Cmdline | Select next completion |
| `<Up>` | Cmdline | Select prev completion |
| `<CR>` | Cmdline | Confirm completion |
| `<Esc>` | Terminal | Exit terminal mode |

## Which-key

| Key | Mode | Action |
|-----|------|--------|
| `<leader>?` | Normal | Show buffer-local keymaps |

## Telescope

| Key | Mode | Action |
|-----|------|--------|
| `<leader>fd` | Normal | Find files |
| `<C-j>` | Insert | Move selection next |
| `<C-k>` | Insert | Move selection prev |
| `j` | Normal | Move selection next |
| `k` | Normal | Move selection prev |

## Harpoon

| Key | Mode | Action |
|-----|------|--------|
| `<leader>a` | Normal | Add to list |
| `<leader>hr` | Normal | Remove from list |
| `<C-e>` | Normal | Toggle menu |
| `<C-S-P>` | Normal | Previous |
| `<C-S-N>` | Normal | Next |
| `<C-h>` | Normal | Slot 1 |
| `<C-j>` | Normal | Slot 2 |
| `<C-k>` | Normal | Slot 3 |
| `<C-l>` | Normal | Slot 4 |

## Toggleterm

| Key | Mode | Action |
|-----|------|--------|
| `<leader>ot` | Normal | Open terminal (smart layout) |
| `<leader>ct` | Normal | Toggle all terminals |

## LSP

| Key | Mode | Action |
|-----|------|--------|
| `gd` | Normal | Go to definition |
| `gD` | Normal | Go to declaration |
| `gr` | Normal | Go to references |
| `gI` | Normal | Go to implementation |
| `K` | Normal | Hover docs |
| `<leader>rn` | Normal | Rename symbol |
| `<leader>ca` | Normal | Code action |
| `[d` | Normal | Previous diagnostic |
| `]d` | Normal | Next diagnostic |
| `<leader>e` | Normal | Show diagnostic float |

## Bufferline

| Key | Mode | Action |
|-----|------|--------|
| `<leader>nb` | Normal | New buffer |
| `<S-h>` | Normal | Previous buffer |
| `<S-l>` | Normal | Next buffer |
| `<leader>1` | Normal | Go to buffer 1 |
| `<leader>2` | Normal | Go to buffer 2 |
| `<leader>3` | Normal | Go to buffer 3 |
| `<leader>4` | Normal | Go to buffer 4 |
| `<leader>5` | Normal | Go to buffer 5 |
| `<leader>x` | Normal | Close current buffer |

# Tmux Keymaps

Prefix: `C-b` (default). All keymaps below assume `C-b` first unless noted.

## Sessions

| Key | Action |
|-----|--------|
| `C-b d` | Detach from session |
| `C-b s` | List sessions |
| `C-b (` | Switch to previous session |
| `C-b )` | Switch to next session |
| `C-b $` | Rename session |
| `tmux new -s name` | Create new session (from shell) |

## Windows

| Key | Action |
|-----|--------|
| `C-b c` | Create new window |
| `C-b ,` | Rename window |
| `C-b .` | Move window (re-index) |
| `C-b w` | List windows |
| `C-b n` | Next window |
| `C-b p` | Previous window |
| `C-b l` | Last (previous) window |
| `C-b &` | Kill window |
| `C-b 0-9` | Select window by number |
| `C-b f` | Find window by name |
| `C-b i` | Show window info |

## Panes

| Key | Action |
|-----|--------|
| `C-b %` | Split vertically (left/right) |
| `C-b "` | Split horizontally (top/bottom) |
| `C-b o` | Next pane |
| `C-b ;` | Last (previous) pane |
| `C-b q` | Show pane numbers (type number to jump) |
| `C-b x` | Kill pane |
| `C-b z` | Toggle pane zoom (fullscreen) |
| `C-b !` | Break pane into new window |
| `C-b C-o` | Rotate panes forward |
| `C-b {` | Swap pane left/up |
| `C-b }` | Swap pane right/down |
| `C-b Space` | Toggle through layouts |
| `C-b M-1` | Even horizontal layout |
| `C-b M-2` | Even vertical layout |
| `C-b M-3` | Main horizontal layout |
| `C-b M-4` | Main vertical layout |
| `C-b M-5` | Tiled layout |
| `C-b Up/Down/Left/Right` | Select pane by direction |
| `C-b M-Up/Down/Left/Right` | Resize pane by 5 cells |
| `C-b C-Up/Down/Left/Right` | Resize pane by 1 cell |

## Copy Mode (vi)

| Key | Action |
|-----|--------|
| `C-b [` | Enter copy mode |
| `C-b ]` | Paste buffer |
| `C-b #` | List paste buffers |
| `C-b =` | Choose paste buffer |
| `Space` | Start selection (in copy mode) |
| `Enter` | Copy selection (in copy mode) |
| `v` | Toggle selection (in copy mode) |

## Misc

| Key | Action |
|-----|--------|
| `C-b :` | Enter command mode |
| `C-b ?` | List all keybindings |
| `C-b t` | Show big clock |
| `C-b ~` | Show tmux messages |
| `C-b C-r` | Reload config |

## Enabled Options (from `tmux.conf`)

| Option | Value |
|--------|-------|
| Mouse | on |
| Default terminal | `tmux-256color` |
| Status position | bottom |

Status left: `#[bg=#89b4fa, fg=#1e1e2e, bold] #S` (session name)
Status right: `#[bg=#89b4fa, bold, fg=#1e1e2e] %H:%M` (clock)
