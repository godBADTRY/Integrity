### Features

A simple bash script that checks if the MD5 hash of two files is the same. With this, we can verify that the integrity of the files has not been compromised or corrupted. I developed this tool to add it to my own zshrc as I am a CTF player, and many times when I frequently transfer files between machines, it turns out to be damaged.

I appreciate any feedback!


## Dependencies

![](/home/badtry/Web/Integrity/avatar.png)

- **Diff**
- **md5sum**

## Example
```sh
./integrity.sh
Enter the original file: /path/of/the/original/file
Enter the copy file: /path/of/the/copy/file

```
