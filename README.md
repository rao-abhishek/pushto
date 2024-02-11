## Prerequisites
1. Ensure [Git CMD](https://git-scm.com/) is installed on your system.
2. [Prettier](https://prettier.io/) is installed and set up to run with the command `npm run prettify` or `yarn run prettify`.

## Installation Steps
1. **Clone the Repository:**
   ```bash
   git clone https://github.com/rao-abhishek/pushto.git

2. **Add `pushto` to Git CMD:**
   - change the file extension from `pushto.sh` to `pushto.exe`
   - Copy the `pushto.exe` file to the `path/to/Git/cmd/` directory. For example, you can place it in `C:\Program Files\Git\cmd`.

4. **Update System Environment Variables:**
   - Include the path to the `pushto` file from the `path/to/Git/cmd/` directory in the system's environment variables.

5. **Verify Setup:**
   - Open a Git Bash terminal and run the following command:
     ```bash
     pushto help
     ```

### All Set!
Your installation is now complete. You can use the `pushto` command in the Git Bash terminal.
