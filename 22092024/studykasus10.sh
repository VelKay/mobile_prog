function hitungharga() {
    echo "Berapa jumlah buku yang akan dijual?: "
    read buku

    echo "Berapa harga jual per buku nya? (dalam rupiah): "  
    read bukuprofit

    echo "Berapa harga produksi per buku nya? (dalam rupiah): "  
    read bukuproduk

    echo "Berapa biaya penerbitannya? (dalam rupiah): "
    read penerbit
    
    totalprofit=$((buku * bukuprofit))
    totalbuku=$((buku * bukuproduk))
    total=$((totalbuku + penerbit))
    untung=$((totalprofit - total))

    echo "=========================="
    echo "Jadi, total keuntungan jika semua buku terjual adalah: Rp $totalprofit" 
    echo "Jadi, total biaya yang dikeluarkan untuk memproduksi buku adalah: Rp $totalbuku"
    echo "Jadi, total modal yang dikeluarkan adalah: Rp $total"
    echo "=========================="
    echo "Jadi, total keuntungan yang didapat oleh penulis ini adalah: Rp $untung"
    
    if [ $untung -lt 0 ]; then
        echo "Penulis mendapatkan kerugian sebesar Rp ${untung#-}"
    else
        echo "Penulis ini mendapatkan keuntungan."
    fi
}

hitungharga