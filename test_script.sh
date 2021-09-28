#!/bin/sh

set -eux

cyc=06
type=pbl
type=sfc
echo 0 > filesize
export XLFRTEOPTS="unit_vars=yes"
export FORT11=dustcs.t${cyc}z.${type}.1hr_227.grib2
export FORT12="filesize"
export FORT31=
export FORT51=dustconus.t${cyc}z.${type}.1hr_227.grib2.temp

TOCGRIB2SUPER=/apps/ops/prod/libs/intel/19.1.3.304/grib_util/1.2.3/bin/tocgrib2super
#TOCGRIB2SUPER=/u/Kyle.Gerheiser/dustcs.20210824_test/NCEPLIBS-grib_util/build/install/bin/tocgrib2super
PARMutil=/lfs/h2/emc/physics/noscrub/Ho-Chun.Huang/wcoss2_transition/util/parm
${TOCGRIB2SUPER} < $PARMutil/grib2_dustconus_${type}.t${cyc}z.227
