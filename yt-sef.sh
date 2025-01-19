#!/bin/bash
links=("$@")

###############################################################################
#         PLEASE MANUALY SET THE PATH TO YOUR yt-dlp INSTACE HERE!!!          #
###############################################################################
ytdlp="/data/data/com.termux/files/usr/bin/yt-dlp"
#ytdlp="/bin/yt-dlp.exe"


while getopts ":hal:" option; do
   case $option in
      h) # display Help
         echo "Batch fetch YouTube video names from URL or video ID with yt-dlp."
         echo "Usage: yt-se.sh [options...] <url>"
         echo " -a <file>   File with YouTube links or video IDs separated by newlines."
         echo " -l <URLs>   A list of URLs or video IDs as parameters that will be counted and parsed."
         echo " -h          This help text."
         echo ""
         exit;;
      a) # Enter a name
         shift
         links=("$@")
         fullpath2list=$(readlink -f "$1")
         echo "URL or video ID list file : $fullpath2list"
         echo ""
         mapfile linkslist < "$fullpath2list"
         for linkslist in "${linkslist[@]}"; do
         "$ytdlp" -se "$linkslist"
         echo "$linkslist"
         done
         exit;;
      l)
         shift
         links=("$@")
         echo Number of links or video IDs: "$#"
         echo Links URLs or video IDs: "$@"
         echo ""
         for links in "${@}"; do
         "$ytdlp" -se "$links"
         echo "$links"
         done
         exit;;
      *)
         echo "Bad options flag! Run this script with the help parameter -h." 
         exit;;
   esac
done

         links=("$@")
         echo Number of links or video IDs: "$#"
         echo Links URLs or video IDs: "$@"
         echo ""
         for links in "${@}"; do
         "$ytdlp" -se "$links"
         echo "$links"
         done
