function hitungharga() {
    echo "Berapa jumlah siswa yang ikut?: "
    read siswa

    echo "Berapa biaya transportasi per siswa? (dalam rupiah): "  
    read transport

    echo "Berapa biaya tiket masuk objek wisata per siswa? (dalam rupiah): "
    read tiket

    echo "Berapa biaya konsumsi per siswa? (dalam rupiah): "
    read konsum
    
    echo "Berapa anggaran yang dimiliki? (dalam rupiah): "
    read modal

    totaltransport=$((siswa * transport))
    totaltiket=$((siswa * tiket))
    totalkonsum=$((siswa * konsum))
    totalbiaya=$((totaltransport + totaltiket + totalkonsum))
    sisamodal=$((modal - totalbiaya))

    echo "=========================="
    echo "Jadi, total biaya untuk transportasi siswa adalah adalah: Rp $totaltransport" 
    echo "Jadi, total biaya untuk tiket siswa adalah: Rp $totaltiket" 
    echo "Jadi, total biaya untuk konsumsi siswa adalah: Rp $totalkonsum" 
    echo "=========================="
    echo "Jadi, total biaya untuk perjalanan wisata sekolah adalah: Rp $totalbiaya"
    echo "Jadi, sisa anggarannya adalah: Rp $sisamodal" 

    if [ $sisamodal -lt 0 ]; then
        echo "Perjalanan ini melebihi anggaran sebesar Rp ${sisamodal#-}"
    else
        echo "Perjalanan ini dapat diselesaikan dengan anggaran yang ada."
    fi
}

hitungharga