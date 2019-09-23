for betastr in 1.5 2.0 3.0 7.0
do
for cosmostr in om0.1000_w-1.0000 om0.3071_w-0.5000 om0.3071_w-1.0000 om0.3071_w-1.5000 om0.6000_w-1.0000
do
for snap in 10 12 15 20 26 33 41 48 58 75
do
dir=$cosmostr/$snap.csv.shiftz_nbar1e-3_output_numNNB200_beta${betastr}000/
mkdir -p $dir
for file in om0.3071_w-1.0000.BSKinfo.length.edges om0.3071_w-1.0000.BSKinfo.length.numbers om0.3071_w-1.0000.BSKinfo.Lmu.40L.40mu.Ledges om0.3071_w-1.0000.BSKinfo.Lmu.40L.40mu.muedges om0.3071_w-1.0000.BSKinfo.Lmu.40L.40mu.numbers om0.3071_w-1.0000.BSKinfo.mu.edges om0.3071_w-1.0000.BSKinfo.mu.numbers
do
rsync -avrP  /home/xiaodongli/data/BigMDPL/snaps/nbar1e-3_wrongcosmologies/$dir/$file ./$dir/
done
done
done
done
