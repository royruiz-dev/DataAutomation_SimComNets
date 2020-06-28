#!/bin/bash
# VoIP initialization code for each configuration

echo "**.user[*].numApps = 2 # number of applications on the user"
echo ""
echo "**.user[*].app[1].typename = \"VoIPApp\" # VoIP custom application type"
echo "**.user[*].app[1].destPort = $((100)) # destination port"
echo "**.user[*].app[1].localPort = $((100)) # listen port"
echo "**.user[*].app[1].messageLength = $((32))B + $((12))B # 32B of payload + RTP protocol headers, IP+UDP headers included via simulation"
echo "**.user[*].app[1].sendInterval = 0.02s # 50pps rate; sends a packet every 0.02s"
echo ""

##########################################################################################

echo "300 PAIRS - SAME Access Router"
echo ""
# start of each access router
arr=(25 50 75 100 125 150 175 200 225 250 275 300 325 350 375 400 425 450 475 500 525 550 575 600 625)
for k in "${arr[@]}"; do
  l=$(($k-25)); # first user
  u=$((((($k-1)-$l)/2)+$l)); # go to the 12th user from first user

	for i in $(seq $l $u); do
		let "k--"
		if [ $i == $k ]; then
			echo ""
		else
			echo "**.user[$(($i))].app[1].destAddresses = \"user[$k]\""
			echo "**.user[$(($k))].app[1].destAddresses = \"user[$i]\""
		fi
	done
done

# Enable/Disable conditions below for SAME/DIFF Backbone Router
echo "300 PAIRS - DIFF Access Router"
echo ""

arr2=(0 125 250 375 500) # DIFF Access Router | SAME Backbone Router
# arr2=(0 25 50 75 100) # DIFF Access Router | DIFF Backbone Router

for k in "${arr2[@]}"; do
	a=$(($k+25)); # DIFF Access Router | SAME Backbone Router
	b=$(($k+50)); # DIFF Access Router | SAME Backbone Router
	c=$(($k+75)); # DIFF Access Router | SAME Backbone Router
	d=$(($k+100)); # DIFF Access Router | SAME Backbone Router
#	a=$(($k+125)); # DIFF Access Router | DIFF Backbone Router
#	b=$(($k+250)); # DIFF Access Router | DIFF Backbone Router
#	c=$(($k+375)); # DIFF Access Router | DIFF Backbone Router
#	d=$(($k+500)); # DIFF Access Router | DIFF Backbone Router
	max_a=$(($a+5));
	max_b=$(($b+5));
	max_c=$(($c+5));
	max_d=$(($d+5));
	for x in $(seq $k $(($k+23))); do
		var1="**.user[$(($x))].app[1].destAddresses = "
		if [ $a -le $max_a ]; then
			var3="**.user[$(($a))].app[1].destAddresses = "
			var2="\"user[$a]\""
			var4="\"user[$x]\""
			echo $var1$var2
			echo $var3$var4
			let "a++"
		elif [ $b -le $max_b ]; then
			var3="**.user[$(($b))].app[1].destAddresses = "
			var2="\"user[$b]\""
			var4="\"user[$x]\""
			echo $var1$var2
			echo $var3$var4
			let "b++"
		elif [ $c -le $max_c ]; then
			var3="**.user[$(($c))].app[1].destAddresses = "
			var2="\"user[$c]\""
			var4="\"user[$x]\""
			echo $var1$var2
			echo $var3$var4
			let "c++"
		elif [ $d -le $max_d ]; then
			var3="**.user[$(($d))].app[1].destAddresses = "
			var2="\"user[$d]\""
			var4="\"user[$x]\""
			echo $var1$var2
			echo $var3$var4
			let "d++"
		else
			echo ""
		fi
	done

	max_b=$(($b+5));
	max_c=$(($c+5));
	max_d=$(($d+5));
	for x in $(seq $a $(($a+17))); do
		var1="**.user[$(($x))].app[1].destAddresses = "
			if [ $b -le $max_b ]; then
				var3="**.user[$(($b))].app[1].destAddresses = "
				var2="\"user[$b]\""
				var4="\"user[$x]\""
				echo $var1$var2
				echo $var3$var4
				let "b++"
			elif [ $c -le $max_c ]; then
				var3="**.user[$(($c))].app[1].destAddresses = "
				var2="\"user[$c]\""
				var4="\"user[$x]\""
				echo $var1$var2
				echo $var3$var4
				let "c++"
			elif [ $d -le $max_d ]; then
				var3="**.user[$(($d))].app[1].destAddresses = "
				var2="\"user[$d]\""
				var4="\"user[$x]\""
				echo $var1$var2
				echo $var3$var4
				let "d++"
			else
				echo ""
			fi
	done

	max_c=$(($c+5));
	max_d=$(($d+5));
	for x in $(seq $b $(($b+11))); do
		var1="**.user[$(($x))].app[1].destAddresses = "
			if [ $c -le $max_c ]; then
				var3="**.user[$(($c))].app[1].destAddresses = "
				var2="\"user[$c]\""
				var4="\"user[$x]\""
				echo $var1$var2
				echo $var3$var4
				let "c++"
			elif [ $d -le $max_d ]; then
				var3="**.user[$(($d))].app[1].destAddresses = "
				var2="\"user[$d]\""
				var4="\"user[$x]\""
				echo $var1$var2
				echo $var3$var4
				let "d++"
			else
				echo ""
			fi
	done

	max_d=$(($d+5));
	for x in $(seq $c $(($c+5))); do
	var1="**.user[$(($x))].app[1].destAddresses = "
		if [ $d -le $max_d ]; then
			var3="**.user[$(($d))].app[1].destAddresses = "
			var2="\"user[$d]\""
			var4="\"user[$x]\""
			echo $var1$var2
			echo $var3$var4
			let "d++"
		else
			echo ""
		fi
	done
echo ""
echo ""
done

##########################################################################################

#echo "150 PAIRS - DIFF Access Router"
#echo ""

#arr3=(0 25 50 75 100)
#for k in "${arr3[@]}"; do
#	a=$(($k+125));
#	b=$(($k+250));
#	c=$(($k+375));
#	d=$(($k+500));

arr3=(0 25 50 75 100) # start of each backbone router

#for k in "${arr3[@]}"; do
#	a=$(($k+25)); # DIFF Access Router | SAME Backbone Router
#	b=$(($k+50)); # DIFF Access Router | SAME Backbone Router
#	c=$(($k+75)); # DIFF Access Router | SAME Backbone Router
#	d=$(($k+100)); # DIFF Access Router | SAME Backbone Router
#	a=$(($k+125)); # DIFF Access Router | DIFF Backbone Router
#	b=$(($k+250)); # DIFF Access Router | DIFF Backbone Router
#	c=$(($k+375)); # DIFF Access Router | DIFF Backbone Router
#	d=$(($k+500)); # DIFF Access Router | DIFF Backbone Router
#	max_a=$(($a+2));
#	max_b=$(($b+2));
#	max_c=$(($c+2));
#	max_d=$(($d+2));
#	for x in $(seq $k $(($k+11))); do
#		var1="**.user[$(($x))].app[1].destAddresses = "
#		if [ $a -le $max_a ]; then
#			var3="**.user[$(($a))].app[1].destAddresses = "
#			var2="\"user[$a]\""
#			var4="\"user[$x]\""
#			echo $var1$var2
#			echo $var3$var4
#			let "a++"
#		elif [ $b -le $max_b ]; then
#			var3="**.user[$(($b))].app[1].destAddresses = "
#			var2="\"user[$b]\""
#			var4="\"user[$x]\""
#			echo $var1$var2
#			echo $var3$var4
#			let "b++"
#		elif [ $c -le $max_c ]; then
#			var3="**.user[$(($c))].app[1].destAddresses = "
#			var2="\"user[$c]\""
#			var4="\"user[$x]\""
#			echo $var1$var2
#			echo $var3$var4
#			let "c++"
#		elif [ $d -le $max_d ]; then
#			var3="**.user[$(($d))].app[1].destAddresses = "
#			var2="\"user[$d]\""
#			var4="\"user[$x]\""
##			echo $var3$var4
	#		let "d++"
#		else
#			echo ""
#		fi
#	done
#
#	max_b=$(($b+2));
#	max_c=$(($c+2));
#	max_d=$(($d+2));
#	for x in $(seq $a $(($a+8))); do
#		var1="**.user[$(($x))].app[1].destAddresses = "
#			if [ $b -le $max_b ]; then
#				var3="**.user[$(($b))].app[1].destAddresses = "
#				var2="\"user[$b]\""
#				var4="\"user[$x]\""
#				echo $var1$var2
#				echo $var3$var4
#				let "b++"
#			elif [ $c -le $max_c ]; then
#				var3="**.user[$(($c))].app[1].destAddresses = "
#				var2="\"user[$c]\""
#				var4="\"user[$x]\""
#				echo $var1$var2
#				echo $var3$var4
#				let "c++"
#			elif [ $d -le $max_d ]; then
#				var3="**.user[$(($d))].app[1].destAddresses = "
#				var2="\"user[$d]\""
#				var4="\"user[$x]\""
#				echo $var1$var2
#				echo $var3$var4
#				let "d++"
#			else
#				echo ""
#			fi
#	done
#
#	max_c=$(($c+2));
#	max_d=$(($d+2));
#	for x in $(seq $b $(($b+5))); do
#		var1="**.user[$(($x))].app[1].destAddresses = "
#			if [ $c -le $max_c ]; then
#				var3="**.user[$(($c))].app[1].destAddresses = "
#				var2="\"user[$c]\""
#				var4="\"user[$x]\""
#				echo $var1$var2
#				echo $var3$var4
#				let "c++"
#			elif [ $d -le $max_d ]; then
#				var3="**.user[$(($d))].app[1].destAddresses = "
#				var2="\"user[$d]\""
#				var4="\"user[$x]\""
#				echo $var1$var2
#				echo $var3$var4
#				let "d++"
#			else
#				echo ""
#			fi
#	done
#
#	max_d=$(($d+2));
#	for x in $(seq $c $(($c+2))); do
#	var1="**.user[$(($x))].app[1].destAddresses = "
#		if [ $d -le $max_d ]; then
#			var3="**.user[$(($d))].app[1].destAddresses = "
#			var2="\"user[$d]\""
#			var4="\"user[$x]\""
#			echo $var1$var2
#			echo $var3$var4
#			let "d++"
#		else
#			echo ""
#		fi
#	done
#echo ""
#echo ""
#done

# User mapping between different access routers and different backbone routers
#user[0] --> user[125] BB1_A1 --> BB2_A1
#user[1] --> user[126] BB1_A1 --> BB2_A1
#user[2] --> user[127] BB1_A1 --> BB2_A1
#user[3] --> user[128] BB1_A1 --> BB2_A1
#user[4] --> user[129] BB1_A1 --> BB2_A1
#
#user[5] --> user[250] BB1_A1 --> BB3_A1
#user[6] --> user[251] BB1_A1 --> BB3_A1
#user[7] --> user[252] BB1_A1 --> BB3_A1
#user[8] --> user[253] BB1_A1 --> BB3_A1
#user[9] --> user[254] BB1_A1 --> BB3_A1
#
#user[10] --> user[375] BB1_A1 --> BB4_A1
#user[11] --> user[376] BB1_A1 --> BB4_A1
#user[12] --> user[377] BB1_A1 --> BB4_A1
#user[13] --> user[378] BB1_A1 --> BB4_A1
#user[14] --> user[379] BB1_A1 --> BB4_A1
#
#user[15] --> user[500] BB1_A1 --> BB4_A1
#user[16] --> user[501] BB1_A1 --> BB4_A1
#user[17] --> user[502] BB1_A1 --> BB4_A1
#user[18] --> user[503] BB1_A1 --> BB4_A1
#user[19] --> user[504] BB1_A1 --> BB4_A1
#
#user[25] --> user[150] BB1_A2 --> BB2_A2
#user[26] --> user[151] BB1_A2 --> BB2_A2
#user[27] --> user[152] BB1_A2 --> BB2_A2
#user[28] --> user[153] BB1_A2 --> BB2_A2
#user[29] --> user[154] BB1_A2 --> BB2_A2
#
#user[30] --> user[275] BB1_A2 --> BB3_A2
#user[31] --> user[276] BB1_A2 --> BB3_A2
#user[32] --> user[277] BB1_A2 --> BB3_A2
#user[33] --> user[278] BB1_A2 --> BB3_A2
#user[34] --> user[279] BB1_A2 --> BB3_A2
#
#user[35] --> user[400] BB1_A2 --> BB4_A2
#user[36] --> user[401] BB1_A2 --> BB4_A2
#user[37] --> user[402] BB1_A2 --> BB4_A2
#user[38] --> user[403] BB1_A2 --> BB4_A2
#user[39] --> user[404] BB1_A2 --> BB4_A2
#
#user[40] --> user[525] BB1_A2 --> BB5_A2
#user[41] --> user[526] BB1_A2 --> BB5_A2
#user[42] --> user[527] BB1_A2 --> BB5_A2
#user[43] --> user[528] BB1_A2 --> BB5_A2
#user[44] --> user[529] BB1_A2 --> BB5_A2
#
#user[50] --> user[175] BB1_A3 --> BB2_A3
#user[51] --> user[176] BB1_A3 --> BB2_A3
#user[52] --> user[177] BB1_A3 --> BB2_A3
#user[53] --> user[178] BB1_A3 --> BB2_A3
#user[54] --> user[179] BB1_A3 --> BB2_A3
#
#user[75] --> user[200] BB1_A4 --> BB2_A4
#user[76] --> user[201] BB1_A4 --> BB2_A4
#user[77] --> user[202] BB1_A4 --> BB2_A4
#user[78] --> user[203] BB1_A4 --> BB2_A4
#user[79] --> user[204] BB1_A4 --> BB2_A4
#
#user[100] --> user[125] BB1_A5 --> BB2_A5
#user[101] --> user[126] BB1_A5 --> BB2_A5
#user[102] --> user[127] BB1_A5 --> BB2_A5
#user[103] --> user[128] BB1_A5 --> BB2_A5
#user[104] --> user[129] BB1_A5 --> BB2_A5

##########################################################################################

#echo "100 PAIRS"
#echo ""

#arr4=(0 25 50 75 100)
#for k in "${arr4[@]}"; do
#	a=$(($k+25)); # DIFF Access Router | SAME Backbone Router
#	b=$(($k+50)); # DIFF Access Router | SAME Backbone Router
#	c=$(($k+75)); # DIFF Access Router | SAME Backbone Router
#	d=$(($k+100)); # DIFF Access Router | SAME Backbone Router
##	a=$(($k+125)); # DIFF Access Router | DIFF Backbone Router
##	b=$(($k+250)); # DIFF Access Router | DIFF Backbone Router
##	c=$(($k+375)); # DIFF Access Router | DIFF Backbone Router
##	d=$(($k+500)); # DIFF Access Router | DIFF Backbone Router
#	max_a=$(($a+4));
#	max_b=$(($b+4));
#	max_c=$(($c+4));
#	max_d=$(($d+4));
#	for x in $(seq $k $(($k+19))); do
#		var1="**.user[$(($x))].app[1].destAddresses = "
#		if [ $a -le $max_a ]; then
#			var3="**.user[$(($a))].app[1].destAddresses = "
#			var2="\"user[$a]\""
#			var4="\"user[$x]\""
#			echo $var1$var2
#			echo $var3$var4
#			let "a++"
#		elif [ $b -le $max_b ]; then
#			var3="**.user[$(($b))].app[1].destAddresses = "
#			var2="\"user[$b]\""
#			var4="\"user[$x]\""
#			echo $var1$var2
#			echo $var3$var4
#			let "b++"
#		elif [ $c -le $max_c ]; then
#			var3="**.user[$(($c))].app[1].destAddresses = "
#			var2="\"user[$c]\""
#			var4="\"user[$x]\""
#			echo $var1$var2
#			echo $var3$var4
#			let "c++"
#		elif [ $d -le $max_d ]; then
#			var3="**.user[$(($d))].app[1].destAddresses = "
#			var2="\"user[$d]\""
#			var4="\"user[$x]\""
#			echo $var1$var2
#			echo $var3$var4
#			let "d++"
#		else
#			echo ""
#		fi
#	done
#echo ""
#echo ""
#done
