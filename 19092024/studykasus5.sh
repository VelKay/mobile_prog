function hitungharga() {
    echo "Berapa jumlah komputernya?: "
    read komputer

    echo "Berapa harga komputer per unit? (dalam rupiah): "  
    read komputercost

    echo "Berapa biaya meja per set? (dalam rupiah): "
    read meja
    
    echo "Berapa biaya kursi per set? (dalam rupiah): "
    read kursi

    echo "Berapa biaya pengiriman dan instalasinya? (dalam rupiah): "
    read pengiriman

    echo "Berapa anggaran yang tersedia? (dalam Rupiah): "
    read modal

    totalkomputer=$((komputer * komputercost))
    totalmeja=$((komputer * meja))
    totalkursi=$((komputer * kursi))
    totalcost=$((totalkomputer + totalmeja + totalkursi + pengiriman))
    sisamodal=$((modal - totalcost))

    echo "=========================="
    echo "Jadi, total biaya komputer adalah: Rp $totalkomputer" 
    echo "Jadi, total biaya meja adalah: Rp $totalmeja"
    echo "Jadi, total biaya kursi adalah: Rp $totalkursi"
    echo "=========================="
    echo "Jadi, total biaya keseluruhan pengadaan peralatan kantor adalah: Rp $totalcost"
    echo "Jadi, sisa modalnya adalah: Rp $sisamodal" 

    if [ $sisamodal -lt 0 ]; then
        echo "Proyek ini melebihi anggaran sebesar Rp ${sisamodal#-}"
    else
        echo  "Proyek ini dapat diselesaikan dengan anggaran yang ada."
    fi
}

hitungharga