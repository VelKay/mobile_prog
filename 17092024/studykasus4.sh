function hitungharga() {
    echo "Berapa biaya sewa tempat festival musik?: "
    read sewacost

    echo "Berapa biaya artis dan penampilannya?: "  
    read performancecost

    echo "Berapa biaya teknis serta peralatannya?: "
    read techcost
    
    echo "Berapa biaya promosi dan biaya lainnya?: "
    read promotioncost

    echo "Berapa anggaran yang tersedia? (dalam Rupiah): "
    read modal

    totalcost=$((sewacost + performancecost + techcost + promotioncost))
    sisamodal=$((modal - totalcost))

    echo "=========================="
    echo "Jadi, total biaya sewa tempat festival musik adalah: Rp $sewacost" 
    echo "Jadi, total biaya artis dan penampilannya adalah: Rp $performancecost"
    echo "Jadi, total biaya teknis serta peralatannya adalah: Rp $techcost"
    echo "Jadi, total biaya promosi dan biaya lainnya adalah: Rp $promotioncost"
    echo "=========================="
    echo "Jadi, total biaya keseluruhan penyelenggaraan festival musik adalah: Rp $totalcost"
    echo "Jadi, sisa modalnya adalah: Rp $sisamodal" 

    if [ $sisamodal -lt 0 ]; then
        echo "Proyek ini melebihi anggaran sebesar Rp ${sisamodal#-}"
    else
        echo  "Proyek ini dapat diselesaikan dengan anggaran yang ada."
    fi
}

hitungharga