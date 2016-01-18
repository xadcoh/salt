# just 32-bit x86 installer available
{% if grains['cpuarch'] == 'AMD64' %}
	{% set PROGRAM_FILES = "%ProgramFiles(x86)%" %}
{% else %}
	{% set POGRAM_FILES = "%ProgramFiles%" %}
{% endif %}
# Source: http://www.cpuid.com/softwares/cpu-z.html
adex:
	'2.68-06':
	full_name: 'adex'
	installer: 'http://192.168.38.206/adex2686_upd.exe'
	#install_flags: '/SP- /VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
	uninstaller: '{{ PROGRAM_FILES }}\CPU-Z\unins000.exe'
	#uninstall_flags: '/SP- /VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
	msiexec: False
	locale: en_US
	reboot: False
# need to manually download from:
# http://www.cpuid.com/softwares/cpu-z.html (ftp DL is cookie protected)
# and place in your master's salt://win/repo-ng/cpu-z directory
# actual file is: cpu-z_1.71.1-setup-en.exe from ftp://ftp.cpuid.com/cpu-z/cpu-z_1.71.1-setup-en.exe
