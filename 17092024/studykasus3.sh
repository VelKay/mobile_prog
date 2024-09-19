function hitungharga() {
    echo "Berapa jumlah alat yang dibutuhkan?: "
    read jumlahalat

    echo "Berapa harga masing-masing alat? (dalam Rupiah): "  
    read alatcost

    echo "Berapa biaya instalasi per alat? (dalam Rupiah): "
    read instalasi
    
    echo "Berapa biaya pelatihan staf secara keseluruhan? (dalam Rupiah): "
    read staff

    echo "Berapa biaya perawatan dan pemeliharaan tahunan? (dalam Rupiah): "
    read maintenance

    echo "Berapa anggaran yang tersedia? (dalam Rupiah): "
    read modal

    totalalat=$((jumlahalat * alatcost))
    totalinstlasi=$((jumlahalat * instalasi))
    totalcost=$((totalalat + totalinstlasi + staff + maintenance))
    sisamodal=$((modal - totalcost))

    echo "=========================="
    echo "Jadi, total biaya alat adalah: Rp $totalalat" 
    echo "Jadi, total biaya instalasi alat adalah: Rp $totalinstlasi"
    echo "Jadi, total biaya pelatihan staf secara keseluruhan adalah: Rp $staff"
    echo "Jadi, total biaya perawatan dan pemeliharaan tahunan adalah: Rp $perawatan"
    echo "=========================="
    echo "Jadi, total biaya keseluruhan pengadaan alat kesehatan di rumah sakit adalah: Rp $totalcost"
    echo "Jadi, sisa modalnya adalah: Rp $sisamodal" 

    if [ $sisamodal -lt 0 ]; then
        echo "Proyek ini melebihi anggaran sebesar Rp ${sisamodal#-}"
    else
        echo  "Proyek ini dapat diselesaikan dengan anggaran yang ada."
    fi
}

hitungharga