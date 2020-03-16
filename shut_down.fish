function shut_down -d 'An alternative to `shutdown`'
    set read_confirm "Shutdown?"

    if read_confirm
        sync; sync; sync;
        shutdown -h now
    end
end
