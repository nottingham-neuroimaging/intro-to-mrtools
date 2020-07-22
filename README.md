# Introduction to `mrTools`

<center>
<img src="images/www-intro-thumbnail.png" width="70%" >
</center>

A work-through of a simple anatomical / fMRI data set with a view to programming your own analysis, scripting and some info about the `mrTools` internals.

## Pre-requisites, suggested reading

To make most of this material, it's a good idea to have worked through some of the tutorials hosted on Justin Gardner's (JLG) webpage:

- **retinotopy / basics** - https://gru.stanford.edu/doku.php/mrtools/tutorialsretinotopy
- **population receptive field analysis** - https://gru.stanford.edu/doku.php/mrtools/tutorialsprf
- **GLM / linear regression** - https://gru.stanford.edu/doku.php/mrtools/tutorialsglm_v2

## Downloads / installs

I (@schluppeck) made the videos and materials running with
- ``Matlab R2016a`` (some known issues with later versions, e.g. `R2019a`, which are on radar)
- `macOS` v10.15.6 Catalina

- https://github.com/justingardner/mrTools
- https://github.com/justingardner/mgl

## Any problems?

If you encounter any problems with the material, running it on non-`macOS` platforms, if you find bugs or have suggestions for improvements, [please file an issue](https://github.com/nottingham-neuroimaging/intro-to-mrtools/issues) on the github page.

## Videos

There is a `youtube` playlist for the videos in this series:

[Youtube playlist **intro-to-mrtools**](https://www.youtube.com/playlist?list=PLCZfmSQp7dzLeEDlONvTSsnipNlcYITCT)


| Week | Topic                                                               |
|:-----|:--------------------------------------------------------------------|
| 1    | [getting started / setup / data / mrInit](01-setup.md)              |
| 2    | [a quick look at the `mrLoadRet` gui](02-first-look-at-gui.md)      |
| 3    | [the data model / data structures](03-data-model.md)                |
| 4    | [interacting witht the dataset](04-interacting-with-data.md)        |
| 5    | [making custom plots (example)](05-custom-plots.md)                 |
|      | alignments with `mrAlign`  - moving between data / anatomical space |
|      | making use of `freesurfer segmentations` / flat maps                |
|      | ??                                                                  |


## Data 

The data for working through the materials is included in the `data` subfolder on this github repo. These were acquired during a session w/ the MSc Brain Imaging students 2017/18 (Project: *Using neuroimaging for education: fMRI, EEG and MEG (ED-NIMG)* #E11122014).

