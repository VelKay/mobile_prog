function hitungharga() {
    echo "Berapa jumlah alat yang dibutuhkan?: "
    read alat

    echo "Berapa harga masing-masing alat? (dalam Rupiah): "  
    read alatcost

    echo "Berapa biaya instalasi per alat? (dalam Rupiah): "
    read instalasi
    
    echo "Berapa biaya pelatihan staf secara keseluruhan? (dalam Rupiah): "
    read staf

    echo "Berapa biaya perawatan dan pemeliharaan tahunan? (dalam Rupiah): "
    read perawatan

    echo "Berapa anggaran yang tersedia? (dalam Rupiah): "
    read modal

    totalalat=$((alat * alatcost))
    totalinstlasi=$((alat * instalasi))
    totalcost=$((totalalat + instalasi + staf + perawatan))
    sisamodal=$((modal - totalcost))

    echo "=========================="
    echo "Jadi, total biaya alat adalah: Rp $totalalat" 
    echo "Jadi, total biaya instalasi alat adalah: Rp $totalinstlasi"
    echo "Jadi, total biaya perawatan dan pemeliharaan tahunan adalah: Rp $perawatan"
    echo "=========================="
    echo "Jadi, total biaya keseluruhan pengadaan alat kesehatan adalah: Rp $totalcost"
    echo "Jadi, sisa modalnya adalah: Rp $sisamodal" 

    if [ $sisamodal -lt 0 ]; then
        echo "Proyek ini melebihi anggaran sebesar Rp ${sisamodal#-}"
    else
        echo  "Proyek ini dapat diselesaikan dengan anggaran yang ada."
    fi
}

hitungharga