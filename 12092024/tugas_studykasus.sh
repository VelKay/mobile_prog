function hitungharga() {
    echo "Berapa jumlah developer?: "
    read jumlahdev

    echo "Berapa jumlah gaji per dev per bulan? (dalam Rupiah): "  
    read gajidev

    echo "Berapa bulan proyek ini dikerjakan?: "
    read projectdur

    echo "Berapa biaya server per bulan? (dalam Rupiah): "
    read servercost
    
    echo "Berapa biaya license software? (dalam Rupiah): "
    read licensecost

    echo "Berapa biaya operasional lainnya? (dalam Rupiah): "
    read operationcost

    echo "Berapa anggaran awal proyek? (dalam Rupiah): "
    read modal

    totalgaji=$((jumlahdev * gajidev * projectdur))
    totalservercost=$((servercost * projectdur))
    totalcost=$((totalgaji + totalservercost + licensecost + operationcost))
    sisamodal=$((modal - totalcost))

    echo "=========================="
    echo "Jadi, total biaya gaji developernya adalah: Rp $totalgaji" 
    echo "Jadi, total biaya servernya adalah: Rp $totalservercost"
    echo "Jadi, total biaya lisensi softwarenya adalah: Rp $licensecost"
    echo "Jadi, total biaya operasionalnya adalah: Rp $operationcost"
    echo "=========================="
    echo "Jadi, total biaya keseluruhan proyeknya adalah: Rp $totalcost"
    echo "Jadi, sisa modalnya adalah: Rp $sisamodal" 

    if [ $sisamodal -lt 0 ]; then
        echo "Proyek ini melebihi anggaran sebesar Rp ${sisamodal#-}"
    else
        echo  "Proyek ini dapat diselesaikan dengan anggaran yang ada."
    fi
}

hitungharga