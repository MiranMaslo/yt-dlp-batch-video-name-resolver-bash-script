# yt-dlp-batch-video-name-resolver-bash-script
A Bash script that will allow you to resolve a list of *video URLs* or *video IDs* you give it into *video URL/video tittle pairs*.

Please don’t forget to modify the script parameter *$ytdlp* to the appropriate path to _yt-dlp_ on your system!
The _which_ and _find_ commands might be helpful to you with this.

This script parses and counts input strings (video IDs or video URLs) from either the terminal as parameters (default behavior) or from a file with video URLs or video IDs separated by newlines.
Then outputs is the video tittle (as in _yt-dlp -se_), then a newline and the video URL it resolved to *stdout*.

Batch fetch YouTube video names from URL or video ID with yt-dlp.
Usage: yt-se.sh [options...] <url>
 -a <file>   File with YouTube links or video IDs separated by newlines.
 -l <URLs>   A list of URLs or video IDs as parameters that will be counted and parsed.
 -h          This help text.
 
