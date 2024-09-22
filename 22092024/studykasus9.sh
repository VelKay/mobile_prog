function hitungharga() {
    echo "Berapa jumlah unit televisi yang akan dijual?: "
    read tv

    echo "Berapa harga jual televisi per unit nya? (dalam rupiah): "  
    read tvprofit

    echo "Berapa harga pembelian tv per unit nya? (dalam rupiah): "  
    read tvcost

    echo "Berapa biaya operasionalnya? (dalam rupiah): "
    read operasional
    
    totalprofit=$((tv * tvprofit))
    totaltv=$((tv * tvcost))
    total=$((totaltv + operasional))
    profit=$((totalprofit - total))

    echo "=========================="
    echo "Jadi, total keuntungan jika semua televisi terjual adalah: Rp $totalprofit" 
    echo "Jadi, total biaya yang dikeluarkan untuk membeli televisi adalah: Rp $totaltv"
    echo "Jadi, total uang yang dikeluarkan adalah: Rp $total"
    echo "=========================="
    echo "Jadi, total keuntungan yang didapat oleh perusahaan ini adalah: Rp $profit"
    
    if [ $profit -lt 0 ]; then
        echo "Penjualan ini mendapatkan kerugian sebesar Rp ${profit#-}"
    else
        echo "Penjualan televisi ini menghasilkan keuntungan."
    fi
}

hitungharga