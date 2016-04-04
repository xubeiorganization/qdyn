module constants

!--- User Settings ---

 ! set OCTAVE_OUTPUT = .true. if you are using Octave instead of Matlab
  logical, parameter :: OCTAVE_OUTPUT = .false.

 ! set the name of the kernel*.tab file, including its full path
  character(*), parameter :: KERNEL_FILE = "~/3D_RUPTURE/qdyn/trunk/src/kernel_I_32768.tab"

! FFT_TYPE parameters for the usage of FFT in fault 3D. 
!   0 : no FFT (compute_stress_3d)
!   1 : FFT along-strike (compute_stress_3d_fft)
!   2 : for FFT along-strike along dip (compute_stress_3d_fft2d)
  integer, parameter :: FFT_TYPE = 0

!--- END of User Settings ---

! By convention let's write the name of constants in capitals,
! but beware that Fortran does not make a difference between capitalized and non-capitalized names
! (i.e. pi and PI are the same)

  double precision, parameter :: PI = 3.141592653589793d0
  double precision, parameter :: DAY = 3600.d0*24.d0, &
                                 WEEK = 7d0*DAY, &
                                 MONTH = 30*DAY, &
                                 YEAR = 365*DAY

end module constants