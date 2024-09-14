function repeat-until-success
    while true;
        command $argv;
        if [ $status -eq 0 ];
            return 0;
        end;
        echo "Retrying in 5 seconds...";
        sleep 5;
    end;
end

