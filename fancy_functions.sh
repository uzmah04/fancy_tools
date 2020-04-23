function gco
{
        # verifie si on est dans un projet git
        Git_or_Not="$(git rev-parse --is-inside-work-tree 2>/dev/null)"

        if [[ $Git_or_Not == "true" ]]
        then

                if [[ $# < 1 ]]
                then

                        echo "Commit message missing!!"
			echo "Retry and add the commit message after gco"

                else

                        echo "You're in a git project"
                        echo " "

                        #verifie sur quel branch on est
                        Current_Branch="$(git rev-parse --abbrev-ref HEAD)"
                        echo "On branch $Current_Branch"
                        echo " "

                        git commit -m "[$Current_Branch] $*"
                        echo "Commit message = [$Current_Branch] $*"

                fi

        else

                echo "Error!! You're not in a git project"

	fi
}
