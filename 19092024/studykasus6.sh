function hitungharga() {
    echo "Berapa biaya pengembangan produknya? (dalam rupiah): "
    read pengembangan

    echo "Berapa biaya pemasaran produknya? (dalam rupiah): "  
    read pemasaran

    echo "Berapa perikiraan unit yang akan dijual?: "
    read unit
    
    echo "Berapa harga per unit produk yang akan dijual? (dalam rupiah): "
    read unitcost

    totalpengembangan=$((pengembangan + pemasaran))
    totalproduk=$((unit * unitcost))
    keuntungan=$((totalproduk - totalpengembangan))

    echo "=========================="
    echo "Jadi, total biaya pengembangan dan pemasaran produk adalah: Rp $totalpengembangan" 
    echo "Jadi, total penghasilan penjualan produknya adalah: Rp $totalproduk"
    echo "=========================="
    echo "Jadi, total keuntungan yang didapat oleh perusahaan adalah: Rp $keuntungan"

}

hitungharga