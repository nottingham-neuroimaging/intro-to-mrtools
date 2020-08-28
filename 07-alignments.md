# Alignments

## First

- copy the `surfRelax` (anatomy) folder into the place that contains the demo dataset (usually this would be in a place determined by the freesurfer install / `$SUBJECTS_DIR`)

- `cd` into our demo data directory `20200721_demo`

- from within the folder start the interactive alignment tool `mrAlign`

```matlab
mrAlign()
```

## Plan

- **Destination** - the image you want to align **to** - often the best base/end point is the file produced by freesurfer and converted with ``mlrImportFreesurfer()`` - see below

- **Source** - the image you want to move / align - usually the anatomy scan in the convention of the data .. in our case the "fake" anatomy file made by averaging the first fMRI scan across time.

- help `mrAlign` by moving the source image to roughly the right place (by changing translation params or initialising from header)

- make sure you check what contrast settings you are using (in our case we are trying to align a T2* weighted image to a T1, so using "reverse" contrast)

- run a **coarse** alignment follwed by 

- a **fine** alignment

- check that everything worked

- save and **export to mrLoadRet-4.5** to update nifti image and mrLoadRet data structures (this step is important to make sure that the data structures in mrLoadRet folder are updated, not just the `qform` and `sform` fields in the nifti file headers)

- in `mrLoadRet`, load in the anatomy file and use to get better visualisations

## Using freesurfer segmenations

To make things a bit quicker here, I have already run a `freesurfer` segmentation on the whole head MPRAGE for this participant.

At UoN, the convention is that participants get a unique 5 digit ID (`^\d{5}`). Here, I will use the made-up ID `55555`.

```bash
recon-all -subjid 55555 -i dafni_01_FSL_7_1.nii -all
```

There is good integration of `freesurfer` segmentations and surfaces into `mrTools` - for background and detailed explanations [see the flatmap & surface tutorial](http://gru.stanford.edu/doku.php/mrtools/tutorialssurfacesandflatmaps)

To get everything into the correct space for `mrTools` to work there is also a step using `mlrImportFreesurfer()`, which has already been done here:

```matlab
% where my freesurfer seg ended up
cd /data/anatomy/freesurfer/subjects/55555
mlrImportFreesurfer() % accept suggestions

% and see resulting folder
ls /data/anatomy/freesurfer/subjects/55555/surfRelax
```

### Important

:exclamation: To make things easier in the long run, it's a good idea to make the `_mprage_pp` image the default base anatomy image for that participant.

This file is not the same as the file used for input to `freesurfer / recon-all` (it's padded to a consistent size and the intensities have been normalised, etc).
