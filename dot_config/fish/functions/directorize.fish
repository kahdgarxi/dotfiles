function directorize --description 'Make a folder for each file in the current directory and move each file into it'
    for file in *
        if test -f $file
            set dir_name (string replace -r '\.[^.]+$' '' $file)

            mkdir $dir_name
            mv $file $dir_name
        end
    end
end
