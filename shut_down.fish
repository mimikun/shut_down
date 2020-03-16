function shut_down -d 'An alternative to `shutdown`'

    sudo uname >> /dev/null
    if ! test $status -eq 0
        return
    end
    
    set read_prompt "Shutdown?"

    if read_confirm
        sync; sync; sync;
        sudo shutdown -h now
    end
end
