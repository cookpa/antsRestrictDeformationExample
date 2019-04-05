# antsRestrictDeformationExample

The option -g (or --restrict-deformation) takes as input a vector of weights
that are applied to the gradient of the similarity metric with respect to the
transformation parameters, at each iteration of the registration optimization. 


## Transform parameters format

For a deformable registration, the transform parameters are a warp field
containing vectors of length NDimensions. So for a 3D image, the weight vector
would be AxBxC, where A, B, C are scalar weights applied to the gradient for the
x, y, and z components of the warp respectively.

For an affine transform, the parameters [defined
here](https://itk.org/Doxygen/html/classitk_1_1AffineTransform.html) are:

"an [array] of size (NDimension + 1) * NDimension...The first (NDimension x
NDimension) parameters defines the matrix in row-major order (where the column
index varies the fastest). The last NDimension parameters defines the
translation in each dimensions."

In this example, we restrict the update of these parameters to a scaling and
translation along the y-axis.


## Transform parameters are defined in physical space

The transforms in ANTs are defined in physical space. The images in this example
are oriented AIL - each slice in voxel space is a sagittal slice through the
brain. In terms of the voxel dimensions (i,j,k), i indexes the
anterior-posterior axis in physical space, and j the superior-inferior axis. 

ITK uses an LPS coordinate system to define physical space, and uses the NIFTI
header to find the rigid transform between the image's AIL voxel space and LPS
physical space. ITK-SNAP uses the same ITK I/O and can be used to visualize how
the voxel and physical spaces are oriented.

To restrict deformation to a particular axis, we must specify the weights in LPS
physical space. In this example, to restrict SyN deformation along the
anterior-posterior axis of the brain, we use 

```
  --restrict-deformation 0x1x0
```
