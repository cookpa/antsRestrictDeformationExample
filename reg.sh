antsRegistration -d 3 -v 1 -r [ fixed.nii.gz, moving.nii.gz, 2 ] -t Affine[ 0.1 ] -m Mattes[ fixed.nii.gz , moving.nii.gz , 1, 32, Random, 0.25 ] -f 2x1 -s 1x0 -c 20x20 -o [ movingToFixedUnrestricted, movingToFixedUnrestrictedDeformed.nii.gz ] 

antsTransformInfo movingToFixedUnrestricted0GenericAffine.mat

antsRegistration -d 3 -v 1 -r [ fixed.nii.gz, moving.nii.gz, 2 ] -t Affine[ 0.1 ] -m Mattes[ fixed.nii.gz , moving.nii.gz , 1, 32, Random, 0.25 ] -f 2x1 -s 1x0 -c 20x20 -o [ movingToFixedRestricted, movingToFixedRestrictedDeformed.nii.gz ] -g 0x0x0x0x1x0x0x0x0x0x1x0 

antsTransformInfo movingToFixedRestricted0GenericAffine.mat

antsRegistration -d 3 -v 1 -r [ fixed.nii.gz, moving.nii.gz, 2 ] -t Affine[ 0.1 ] -m Mattes[ fixed.nii.gz , moving.nii.gz , 1, 32, Random, 0.25 ] -f 2x1 -s 1x0 -c 20x20 -o [ movingToFixedRestricted, movingToFixedRestrictedDeformed.nii.gz ] -g 0x0x0x0x1x0x0x0x0x0x1x0

antsRegistration -d 3 -v 1 -r [ fixed.nii.gz, moving.nii.gz, 2 ] -t SyN[ 0.25, 3, 0 ] -m CC[ fixed.nii.gz , moving.nii.gz , 1, 4] -f 4x2x1 -s 2x1x0 -c 20x20x5 -o [ movingToFixedRestrictedSyN, movingToFixedRestrictedSyNDeformed.nii.gz ] -g 0x1x0
