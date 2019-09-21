# !\bin\bash 
#this is cve_2019_0708bluekeep_rce aute jiaoben daima
#ok let's go
# 变量
dl=/del/null
rcerb=/usr/opt/metasploit-framework/modules/exploits/windows/rdp
rdprb=/usr/opt/metasploit-framework/lib/msf/core/exploit/
rdp_scanner=/usr/opt//metasploit-framework/modules/auxiliary/scanner/rdp/
cvebluekeep=/usr/opt/metasploit-framework/modules/auxiliary/scanner/rdp/
src0708rce=/home/cve_2019_0708_bluekeep_rce
s0708=cve_2019_0708_bluekeep_rce
#判断权限root

#cd chomd +x 0708exp.sh



cd /home/&&git clone https://github.com/NAXG/cve_2019_0708_bluekeep_rce.git >>dl 2>&1
if [ $? -eq 0 ];then
	echo -e "\033[32m cve_2019_0708bluekeep 下载完成！、\033[0m "
else
	echo -e "\033[32m 文件$s0708已存在或者网络出现问题,正在查询问题\033[0m "
	cd $src0708rce
	if [ $? -eq 0 ];then 

		echo -e "\033[32m$s0708文件已存在\033[0m "
	else 
		echo -e "\033[32m网络出现问题,请检查\033[0m "
		exit
	fi 
fi

if [ $? -eq 0 ];then 
	mkdir $rcerb >>dl 2>&1 
	if [ $? -eq 0 ];then
		echo -e "\033[32m$rcerb创建完成！、\033[0m "
	else
		echo -e "\033[32m$rcerb文件目录已存在！、\033[0m "
	fi

	cd $src0708rce 
	cp cve_2019_0708_bluekeep_rce.rb  $rcerb/ &&cp rdp.rb $rdprb &&cp  rdp_scanner.rb $rdp_scanner&&cp cve_2019_0708_bluekeep.rb $cvebluekeep
	if [ $? -eq 0 ];then
		echo -e "\033[32m cve_2019_0708rce 已经全部更新完成！\033[0m "
		
	else
		echo -e "\033[32m 目录出现错误或者有其他问题错误，请手动安装！、\033[0m "
		exit
	fi
fi

echo -e "\033[32m************************************* \033[0m"


echo -e "\033[32m 请手动启动metasploit-framework并且重载模块 ! \033[0m"
echo -e "\033[32m 启动完成后输入”reload_all“命令进行重载 ! \033[0m"



echo -e "\033[32m************************************* \033[0m"
#msfconsole
#if [ $? -eq 0 ];then
#	reload_all
 #       if [ $? -eq 0 ];then 
#	echo -e "\033[32m 完成模块重载完成！"\033[0m"


#	else

#		echo -e "\033[32m 重载失败 ！！！ 请重新升级用apt-get graupdate 升级所有kali版本 \033[0m"
	

