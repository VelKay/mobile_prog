function hitungharga() {
    echo "Berapa jumlah area parkir per slot?: "
    read parkir

    echo "Berapa biaya per slot parkir? (dalam rupiah): "  
    read slot

    echo "Berapa paving serta marka jalannya? (dalam rupiah): "
    read jalanan
    
    echo "Berapa anggaran yang dimiliki? (dalam rupiah): "
    read modal

    totalparkir=$((parkir * slot))
    totalseluruh=$((totalparkir + jalanan))
    sisamodal=$((modal - totalseluruh))

    echo "=========================="
    echo "Jadi, totalseluruh biaya untuk slot parkir adalah: Rp $totalparkir" 
    echo "=========================="
    echo "Jadi, totalseluruh biaya untuk area parkir adalah: Rp $totalseluruh"
    echo "Jadi, sisa modalnya adalah: Rp $sisamodal" 

    if [ $sisamodal -lt 0 ]; then
        echo "Proyek ini melebihi anggaran sebesar Rp ${sisamodal#-}"
    else
        echo  "Proyek ini dapat diselesaikan dengan anggaran yang ada."
    fi
}

hitungharga