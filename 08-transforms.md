# Transforms, more on alignments

## Background

:books: Before reading on here, I strongly suggest you read the [coordinate transforms tutorial](http://gru.stanford.edu/doku.php/mrtools/coordinatetransforms) on Justin Gardner's webpage. This explains in excellent detail how coordinate transforms work and how they are handled in `mrTools`.

Below, I will try to break down the linear algebra a bit more with a worked example. We'll use 2d images to start, as this makes creating diagrams and plots a bit easier -- but the principles apply in 3d, too.

## Coordinate frames

In `mrTools` (et al), the `qform` matrix specifies how to move from the coordinate frame of the images (in `voxels`) in the image into the space of the scanner (in `mm`).

### Example from the anatomy file

To get the `qform` matrix from the file you can use the `mrTools` functions:

```matlab
hdr = mlrImageReadNiftiHeader('../surfRelax/55555_mprage_pp.hdr')
hdr.qform44
```

gives you:

```
>> hdr.qform44

ans =

    1.0000   -0.0000   -0.0000  -92.3241
   -0.0000    1.0000   -0.0000 -411.1006
    0.0000    0.0000    1.0000  107.8069
         0         0         0    1.0000
```

```bash
fslorient -getsform surfRelax/55555_mprage_pp
```



## References

- [Khan Academy: matrices and vectors](https://www.khanacademy.org/math/precalculus/x9e81a4f98389efdf:matrices/x9e81a4f98389efdf:matrices-as-transformations/v/transforming-position-vector)
- https://en.wikipedia.org/wiki/Homogeneous_coordinates