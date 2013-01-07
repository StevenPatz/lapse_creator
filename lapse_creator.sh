if [ $# != 0 ];  then
for x in $(seq 1 $#)
do
	echo Creating Directories. . . 
	mkdir -p temp_$x
done



date=`date +%Y%m%d` 
#date="2012-07-27" 


ffmpeg -loglevel panic -i $1 -r 5 -f image2 temp_1/%05d.png 
ffmpeg -loglevel panic -i temp_1/%05d.png -sameq roadtrip_to_$4_lapse_$date.mp4 
#ffmpeg -i $2 -r 5 -f image2 temp2/%05d.png 
#ffmpeg -i $3 -r 5 -f image2 temp3/%05d.png &
#ffmpeg -i temp1/%05d.png -sameq roadtrip_to_$4_lapse_$date.mp4 
#ffmpeg -i temp2/%05d.png -sameq roadtrip_from_$4_lapse_$date.mp4 
#ffmpeg -i temp3/%05d.png -sameq roadtrip_from_$4_lapse_part2_$date.mp4 








#ffmpeg -threads 2 -i $1 -r 30000/1001 -b 1M -bt 3M -vcodec libx264 -pass 1 -acodec libfaac -ac 1 -ar 48000 -ab 56k roadtrip_to_$4_sound_$date.mp4 
#ffmpeg -threads 2 -i $2 -r 30000/1001 -b 1M -bt 3M -vcodec libx264 -pass 1 -acodec libfaac -ac 1 -ar 48000 -ab 56k roadtrip_from_$4_sound_$date.mp4
#ffmpeg -threads 2 -i $3 -r 30000/1001 -b 2M -bt 4M -vcodec libx264 -pass 1 -acodec libfaac -ac 1 -ar 48000 -ab 56k roadtrip_from_$4_sound_part2_$date.mp4

else 
echo "You need parameters"


fi

