for spec in `ls /build/SPECS`;
do
  rpmbuild --define '_topdir /build' -ba /build/SPECS/$spec
done
