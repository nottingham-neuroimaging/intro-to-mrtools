# Setup

1. Familiarise yourself with the data files (what's what?)
2. Set up folder structure (using the date in ``YYYYMMDD`` format in folder name will help you keep track of sessions / experiments)
3. Move files to the appropriate places:

```text
20200721_demo/
├── Anatomy
│   ├── dafni_01_FSL_3_1.nii
│   └── dafni_01_FSL_7_1.nii
├── Etc
│   ├── Readme.md
│   ├── dafni_01_FSL_2_1.nii
│   └── times.dlm
└── Raw
    └── TSeries
        ├── dafni_01_FSL_4_1.nii
        ├── dafni_01_FSL_5_1.nii
        └── dafni_01_FSL_6_1.nii
```

4. run `mrInit` and enter additional info / metadata.


## Notes

- a commonly used package manager on `macOS` is ``brew`` - https://brew.sh/ -- same idea as `apt-get` on linux.
