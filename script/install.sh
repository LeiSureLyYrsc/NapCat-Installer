#!/bin/bash

MAGENTA='\033[0;1;35;95m'
RED='\033[0;1;31;91m'
YELLOW='\033[0;1;33;93m'
GREEN='\033[0;1;32;92m'
CYAN='\033[0;1;36;96m'
BLUE='\033[0;1;34;94m'
NC='\033[0m'

TARGET_FOLDER="/opt/QQ/resources/app/app_launcher"

function logo() {
    echo -e " ${MAGENTA}┌${RED}──${YELLOW}──${GREEN}──${CYAN}──${BLUE}──${MAGENTA}──${RED}──${YELLOW}──${GREEN}──${CYAN}──${BLUE}──${MAGENTA}──${RED}──${YELLOW}──${GREEN}──${CYAN}──${BLUE}──${MAGENTA}──${RED}──${YELLOW}──${GREEN}──${CYAN}──${BLUE}──${MAGENTA}──${RED}──${YELLOW}──${GREEN}──${CYAN}──${BLUE}──${MAGENTA}──${RED}──${YELLOW}──${GREEN}──${CYAN}──${BLUE}──${MAGENTA}${RED}─┐${NC}"
    echo -e " ${MAGENTA}│${RED}  ${YELLOW}  ${GREEN}  ${CYAN}  ${BLUE}  ${MAGENTA}  ${RED}  ${YELLOW}  ${GREEN}  ${CYAN}  ${BLUE}  ${MAGENTA}  ${RED}  ${YELLOW}  ${GREEN}  ${CYAN}  ${BLUE}  ${MAGENTA}  ${RED}  ${YELLOW}  ${GREEN}  ${CYAN}  ${BLUE}  ${MAGENTA}  ${RED}  ${YELLOW}  ${GREEN}  ${CYAN}  ${BLUE}  ${MAGENTA}  ${RED}  ${YELLOW}  ${GREEN}  ${CYAN}  ${BLUE}  ${MAGENTA} ${RED}│${NC}"
    echo -e " ${RED}│${YELLOW}██${GREEN}█╗${CYAN}  ${BLUE} █${MAGENTA}█╗${RED}  ${YELLOW}  ${GREEN} █${CYAN}██${BLUE}██${MAGENTA}╗ ${RED}  ${YELLOW}  ${GREEN}██${CYAN}██${BLUE}██${MAGENTA}╗ ${RED}  ${YELLOW}  ${GREEN} █${CYAN}██${BLUE}██${MAGENTA}█╗${RED}  ${YELLOW}  ${GREEN} █${CYAN}██${BLUE}██${MAGENTA}╗ ${RED}  ${YELLOW}  ${GREEN}██${CYAN}██${BLUE}██${MAGENTA}██${RED}╗${YELLOW}│${NC}"
    echo -e " ${YELLOW}│${GREEN}██${CYAN}██${BLUE}╗ ${MAGENTA} █${RED}█║${YELLOW}  ${GREEN}  ${CYAN}██${BLUE}╔═${MAGENTA}═█${RED}█╗${YELLOW}  ${GREEN}  ${CYAN}██${BLUE}╔═${MAGENTA}═█${RED}█╗${YELLOW}  ${GREEN}  ${CYAN}██${BLUE}╔═${MAGENTA}══${RED}═╝${YELLOW}  ${GREEN}  ${CYAN}██${BLUE}╔═${MAGENTA}═█${RED}█╗${YELLOW}  ${GREEN}  ${CYAN}╚═${BLUE}═█${MAGENTA}█╔${RED}══${YELLOW}╝${YELLOW}│${NC}"
    echo -e " ${GREEN}│${CYAN}██${BLUE}╔█${MAGENTA}█╗${RED} █${YELLOW}█║${GREEN}  ${CYAN}  ${BLUE}██${MAGENTA}██${RED}██${YELLOW}█║${GREEN}  ${CYAN}  ${BLUE}██${MAGENTA}██${RED}██${YELLOW}╔╝${GREEN}  ${CYAN}  ${BLUE}██${MAGENTA}║ ${RED}  ${YELLOW}  ${GREEN}  ${CYAN}  ${BLUE}██${MAGENTA}██${RED}██${YELLOW}█║${GREEN}  ${CYAN}  ${BLUE}  ${MAGENTA} █${RED}█║${YELLOW}  ${GREEN} ${GREEN}│${NC}"
    echo -e " ${CYAN}│${BLUE}██${MAGENTA}║╚${RED}██${YELLOW}╗█${GREEN}█║${CYAN}  ${BLUE}  ${MAGENTA}██${RED}╔═${YELLOW}═█${GREEN}█║${CYAN}  ${BLUE}  ${MAGENTA}██${RED}╔═${YELLOW}══${GREEN}╝ ${CYAN}  ${BLUE}  ${MAGENTA}██${RED}║ ${YELLOW}  ${GREEN}  ${CYAN}  ${BLUE}  ${MAGENTA}██${RED}╔═${YELLOW}═█${GREEN}█║${CYAN}  ${BLUE}  ${MAGENTA}  ${RED} █${YELLOW}█║${GREEN}  ${CYAN} ${CYAN}│${NC}"
    echo -e " ${BLUE}│${MAGENTA}██${RED}║ ${YELLOW}╚█${GREEN}██${CYAN}█║${BLUE}  ${MAGENTA}  ${RED}██${YELLOW}║ ${GREEN} █${CYAN}█║${BLUE}  ${MAGENTA}  ${RED}██${YELLOW}║ ${GREEN}  ${CYAN}  ${BLUE}  ${MAGENTA}  ${RED}╚█${YELLOW}██${GREEN}██${CYAN}█╗${BLUE}  ${MAGENTA}  ${RED}██${YELLOW}║ ${GREEN} █${CYAN}█║${BLUE}  ${MAGENTA}  ${RED}  ${YELLOW} █${GREEN}█║${CYAN}  ${BLUE} ${BLUE}│${NC}"
    echo -e " ${MAGENTA}│${RED}╚═${YELLOW}╝ ${GREEN} ╚${CYAN}══${BLUE}═╝${MAGENTA}  ${RED}  ${YELLOW}╚═${GREEN}╝ ${CYAN} ╚${BLUE}═╝${MAGENTA}  ${RED}  ${YELLOW}╚═${GREEN}╝ ${CYAN}  ${BLUE}  ${MAGENTA}  ${RED}  ${YELLOW} ╚${GREEN}══${CYAN}══${BLUE}═╝${MAGENTA}  ${RED}  ${YELLOW}╚═${GREEN}╝ ${CYAN} ╚${BLUE}═╝${MAGENTA}  ${RED}  ${YELLOW}  ${GREEN} ╚${CYAN}═╝${BLUE}  ${MAGENTA} ${MAGENTA}│${NC}"
    echo -e " ${RED}└${YELLOW}──${GREEN}──${CYAN}──${BLUE}──${MAGENTA}──${RED}──${YELLOW}──${GREEN}──${CYAN}──${BLUE}──${MAGENTA}──${RED}──${YELLOW}──${GREEN}──${CYAN}──${BLUE}──${MAGENTA}──${RED}──${YELLOW}──${GREEN}──${CYAN}──${BLUE}──${MAGENTA}──${RED}──${YELLOW}──${GREEN}──${CYAN}──${BLUE}──${MAGENTA}──${RED}──${YELLOW}──${GREEN}──${CYAN}──${BLUE}──${MAGENTA}──${RED}${YELLOW}─┘${NC}"
    echo -e "                      ${BLUE}Powered by NapCat-Installer${NC}\n"
}

function log() {
    time=$(date +"%Y-%m-%d %H:%M:%S")
    message="[${time}]: $1 "
    case "$1" in
    *"失败"* | *"错误"* | *"sudo不存在"* | *"当前用户不是root用户"* | *"无法连接"*)
        echo -e "${RED}${message}${NC}"
        ;;
    *"成功"*)
        echo -e "${GREEN}${message}${NC}"
        ;;
    *"忽略"* | *"跳过"* | *"默认"*)
        echo -e "${YELLOW}${message}${NC}"
        ;;
    *)
        echo -e "${BLUE}${message}${NC}"
        ;;
    esac
}

function print_introduction() {
    echo -e "${BLUE}欢迎使用 NapCat 安装脚本！${NC}😋"
    echo -e "${BLUE}--------------------------------------------------${NC}"
    echo -e "${BLUE}安装选项说明:${NC}"
    echo -e " ${BLUE} --tui${NC}: ${BLUE}使用图形化界面进行安装 ${NC}"
    echo -e " ${BLUE} --docker${NC} [${GREEN}y${NC}/${RED}n${NC}]: ${BLUE}使用 Docker 进行安装 ${NC}(${GREEN}y${NC})${BLUE} 或使用 Shell 直接安装 ${NC}(${RED}n${NC})"
    echo -e " ${BLUE}     - Docker 安装: 将${YELLOW} NapCat${NC}${BLUE} 运行在隔离的容器环境中，方便管理和迁移，但需要先安装 ${YELLOW}Docker${NC}"
    echo -e "  ${BLUE}    - Shell 安装: 直接在当前系统环境中安装 ${YELLOW}NapCat ${BLUE}及其依赖${NC}"
    echo -e "  ${BLUE}--cli ${NC}[${GREEN}y${NC}/${RED}n${NC}]:${BLUE} 是否安装 ${YELLOW}NapCat TUI-CLI ${NC} (${BLUE}命令行UI工具${NC}) ${BLUE}${NC}"
    echo -e "    ${BLUE}  - NapCat TUI-CLI${NC} (${YELLOW}推荐${NC}): ${BLUE}允许你在 ssh、没有桌面、WebUI 难以使用的情况下${YELLOW}可视化交互${NC}${BLUE}配置 ${YELLOW}Napcat${NC}"
    echo -e " ${BLUE} --force: 强制重新安装 ${YELLOW}LinuxQQ ${BLUE}和${YELLOW} NapCat ${NC}(${BLUE}仅 Shell 安装有效${NC})"
    echo -e "  ${BLUE}--proxy${NC} [${BLUE}0-n${NC}]: ${BLUE}指定下载时使用的代理服务器序号 ${NC}(${BLUE}0 为不使用${NC})"
    echo -e "  ${BLUE}--qq, --mode, --confirm: Docker 安装时使用的参数${NC}"
    echo -e "${BLUE}--------------------------------------------------${NC}"
}

function execute_command() {
    log "${2}中..."
    ${1}
    if [ $? -eq 0 ]; then
        log "${2} (${1})成功"
    else
        log "${2} (${1})失败"
        exit 1
    fi
}

function check_sudo() {
    if ! command -v sudo &>/dev/null; then
        log "sudo不存在, 请手动安装: \n Centos: dnf install -y sudo\n Debian/Ubuntu: apt-get install -y sudo\n"
        exit 1
    fi
}

function check_root() {
    sudo_id_output=$(sudo whoami)
    if [[ ! ${sudo_id_output} == "root" ]]; then
        log "当前用户不是root用户, 请将此用户加入sudo group后再试。"
        exit 1
    fi
}

function get_system_arch() {
    system_arch=$(arch | sed s/aarch64/arm64/ | sed s/x86_64/amd64/)
    if [ "${system_arch}" = "none" ]; then
        log "无法识别的系统架构, 请检查错误。"
        exit 1
    fi
    log "当前系统架构: ${system_arch}"
}

function detect_package_manager() {
    if command -v apt-get &>/dev/null; then
        package_manager="apt-get"
    elif command -v dnf &>/dev/null; then
        package_manager="dnf"
    else
        log "高级包管理器检查失败, 目前仅支持apt-get/dnf。"
        exit 1
    fi
    log "当前高级包管理器: ${package_manager}"
}

function detect_package_installer() {
    if command -v dpkg &>/dev/null; then
        package_installer="dpkg"
    elif command -v rpm &>/dev/null; then
        package_installer="rpm"
    else
        log "基础包管理器检查失败, 目前仅支持dpkg/rpm。"
        exit 1
    fi
    log "当前基础包管理器: ${package_installer}"
}

function network_test() {
    local parm1=${1}
    local found=0
    target_proxy=""
    proxy_num=${proxy_num:-9}

    if [ "${parm1}" == "Github" ]; then
        proxy_arr=("https://ghfast.top" "https://ghp.ci" "https://gh.wuliya.xin" "https://gh-proxy.com" "https://x.haod.me")
        check_url="https://raw.githubusercontent.com/NapNeko/NapCatQQ/main/package.json"
    elif [ "${parm1}" == "Docker" ]; then
        proxy_arr=("docker.1panel.dev" "dockerpull.com" "dockerproxy.cn" "docker.agsvpt.work" "hub.021212.xyz" "docker.registry.cyou")
        check_url=""
    fi

    if [ ! -z "${proxy_num}" ] && [ "${proxy_num}" -ge 1 ] && [ "${proxy_num}" -le ${#proxy_arr[@]} ]; then
        log "手动指定代理: ${proxy_arr[$proxy_num - 1]}"
        target_proxy="${proxy_arr[$proxy_num - 1]}"
    else
        if [ "${proxy_num}" -ne 0 ]; then
            log "proxy 未指定或超出范围, 正在检查${parm1}代理可用性..."
            for proxy in "${proxy_arr[@]}"; do
                status=$(curl -o /dev/null -s -w "%{http_code}" "${proxy}/${check_url}")
                if [ "${parm1}" == "Github" ] && [ ${status} -eq 200 ]; then
                    found=1
                    target_proxy="${proxy}"
                    log "将使用${parm1}代理: ${proxy}"
                    break
                elif [ "${parm1}" == "Docker" ] && ([ ${status} -eq 200 ] || [ ${status} -eq 301 ]); then
                    found=1
                    target_proxy="${proxy}"
                    log "将使用${parm1}代理: ${proxy}"
                    break
                fi
            done

            if [ ${found} -eq 0 ]; then
                log "无法连接到${parm1}, 请检查网络。"
                exit 1
            fi
        else
            log "代理已关闭, 将直接连接${parm1}..."
        fi
    fi
}
# 似乎是适配的系统较少
function install_dependency() {
    log "开始更新依赖..."
    detect_package_manager

    if [ "${package_manager}" = "apt-get" ]; then
        execute_command "sudo apt-get update -y -qq" "更新软件包列表"
        execute_command "sudo apt-get install -y -qq zip unzip jq curl xvfb screen xauth procps" "安装zip unzip jq curl xvfb screen xauth procps"
    elif [ "${package_manager}" = "dnf" ]; then
        execute_command "sudo dnf install -y epel-release" "安装epel"
        execute_command "sudo dnf install --allowerasing -y zip unzip jq curl xorg-x11-server-Xvfb screen procps-ng" "安装zip unzip jq curl xorg-x11-server-Xvfb screen procps-ng"
    fi
    log "更新依赖成功..."
}

function create_tmp_folder() {
    if [ -d "./NapCat" ] && [ "$(ls -A ./NapCat)" ]; then
        log "文件夹已存在且不为空(./NapCat)，请重命名后重新执行脚本以防误删"
        exit 1
    fi
    sudo mkdir -p ./NapCat
}

function clean() {
    sudo rm -rf ./NapCat
    if [ $? -ne 0 ]; then
        log "临时目录删除失败, 请手动删除 ./NapCat。"
    fi
    sudo rm -rf ./NapCat.Shell.zip
    if [ $? -ne 0 ]; then
        log "NapCatQQ压缩包删除失败, 请手动删除 ${DEFAULT_FILE}。"
    fi
    if [ -f "/etc/init.d/napcat" ]; then
        sudo rm -f /etc/init.d/napcat
    fi
    if [ -d "${TARGET_FOLDER}/napcat.packet" ]; then
        sudo rm -rf "${TARGET_FOLDER}/napcat.packet"
    fi
}

function download_napcat() {
    create_tmp_folder
    default_file="NapCat.Shell.zip"
    if [ -f "${default_file}" ]; then
        log "检测到已下载NapCat安装包,跳过下载..."
    else
        log "开始下载NapCat安装包,请稍等..."
        network_test "Github"
        napcat_download_url="${target_proxy:+${target_proxy}/}https://github.com/NapNeko/NapCatQQ/releases/latest/download/NapCat.Shell.zip"

        curl -L -# "${napcat_download_url}" -o "${default_file}"
        if [ $? -ne 0 ]; then
            log "文件下载失败, 请检查错误。或者手动下载压缩包并放在脚本同目录下"
            clean
            exit 1
        fi

        if [ -f "${default_file}" ]; then
            log "${default_file} 成功下载。"
        else
            ext_file=$(basename "${napcat_download_url}")
            if [ -f "${ext_file}" ]; then
                sudo mv "${ext_file}" "${default_file}"
                if [ $? -ne 0 ]; then
                    log "文件更名失败, 请检查错误。"
                    clean
                    exit 1
                else
                    log "${default_file} 成功重命名。"
                fi
            else
                log "文件下载失败, 请检查错误。或者手动下载压缩包并放在脚本同目录下"
                clean
                exit 1
            fi
        fi
    fi

    log "正在验证 ${default_file}..."
    sudo unzip -t "${default_file}" >/dev/null 2>&1
    if [ $? -ne 0 ]; then
        log "文件验证失败, 请检查错误。"
        clean
        exit 1
    fi

    log "正在解压 ${default_file}..."
    sudo unzip -q -o -d ./NapCat NapCat.Shell.zip
    if [ $? -ne 0 ]; then
        log "文件解压失败, 请检查错误。"
        clean
        exit 1
    fi
}

function get_qq_target_version() {
    #固定 3.2.16-34606
    linuxqq_target_version="3.2.17-34606"

    #linuxqq_target_version=$(jq -r '.linuxVersion' ./NapCat/qqnt.json)
    #linuxqq_target_verhash=$(jq -r '.linuxVerHash' ./NapCat/qqnt.json)

}

function compare_linuxqq_versions() {
    local ver1="${1}" #当前版本
    local ver2="${2}" #目标版本

    IFS='.-' read -r -a ver1_parts <<<"${ver1}"
    IFS='.-' read -r -a ver2_parts <<<"${ver2}"

    local length=${#ver1_parts[@]}
    if [ ${#ver2_parts[@]} -lt $length ]; then
        length=${#ver2_parts[@]}
    fi

    for ((i = 0; i < length; i++)); do
        if ((ver1_parts[i] > ver2_parts[i])); then
            force="n"
            return
        elif ((ver1_parts[i] < ver2_parts[i])); then
            force="y"
            return
        fi
    done

    if [ ${#ver1_parts[@]} -gt ${#ver2_parts[@]} ]; then
        force="n"
    elif [ ${#ver1_parts[@]} -lt ${#ver2_parts[@]} ]; then
        force="y"
    else
        force="n"
    fi
}

function check_linuxqq() {
    get_qq_target_version
    linuxqq_package_name="linuxqq"
    if [[ -z "${linuxqq_target_version}" || "${linuxqq_target_version}" == "null" ]]; then
        log "无法获取目标QQ版本, 请检查错误。"
        exit 1
    fi

    linuxqq_target_build=${linuxqq_target_version##*-}
    detect_package_installer

    log "最低linuxQQ版本: ${linuxqq_target_version}, 构建: ${linuxqq_target_build}"
    if [ "${force}" = "y" ]; then
        log "强制重装模式..."
        install_linuxqq
    else
        if [ "${package_installer}" = "rpm" ]; then
            if rpm -q ${linuxqq_package_name} &>/dev/null; then
                linuxqq_installed_version=$(rpm -q --queryformat '%{VERSION}' ${linuxqq_package_name})
                linuxqq_installed_build=${linuxqq_installed_version##*-}
                log "${linuxqq_package_name} 已安装, 版本: ${linuxqq_installed_version}, 构建: ${linuxqq_installed_build}"

                compare_linuxqq_versions "${linuxqq_installed_version}" "${linuxqq_target_version}"
                if [ "${force}" = "y" ]; then
                    log "版本未满足要求, 需要更新。"
                    install_linuxqq
                else
                    log "版本已满足要求, 无需更新。"
                    if [ "${use_tui}" = "y" ]; then
                        reinstall=$(whiptail --title "Napcat Installer" --yesno "版本已满足要求, 是否重装。" 15 50 3>&1 1>&2 2>&3)
                        if [ $? -eq 0 ]; then
                            force="y"
                        else
                            force="n"
                            update_linuxqq_config "${linuxqq_installed_version}" "${linuxqq_installed_build}"
                        fi
                    else
                        log "是否强制重装, 10s超时跳过重装(y/n)"
                        read -t 10 -r force
                        if [[ $? -ne 0 ]]; then
                            log "超时未输入, 跳过重装"
                            force="n"
                            update_linuxqq_config "${linuxqq_installed_version}" "${linuxqq_installed_build}"
                        elif [[ "${force}" =~ ^[Yy]?$ ]]; then
                            force="y"
                            log "强制重装..."
                            install_linuxqq
                        elif [[ "${force}" == "n" ]]; then
                            force="n"
                            log "跳过重装"
                            update_linuxqq_config "${linuxqq_installed_version}" "${linuxqq_installed_build}"
                        else
                            force="n"
                            log "输入错误, 跳过重装"
                            update_linuxqq_config "${linuxqq_installed_version}" "${linuxqq_installed_build}"
                        fi
                    fi
                fi
            else
                install_linuxqq
            fi
        elif [ "${package_installer}" = "dpkg" ]; then
            if dpkg -l | grep ${linuxqq_package_name} &>/dev/null; then
                linuxqq_installed_version=$(dpkg -l | grep "^ii" | grep "linuxqq" | awk '{print $3}')
                linuxqq_installed_build=${linuxqq_installed_version##*-}
                log "${linuxqq_package_name} 已安装, 版本: ${linuxqq_installed_version}, 构建: ${linuxqq_installed_build}"

                compare_linuxqq_versions "${linuxqq_installed_version}" "${linuxqq_target_version}"
                if [ "${force}" = "y" ]; then
                    log "版本未满足要求, 需要更新。"
                    install_linuxqq
                else
                    log "版本已满足要求, 无需更新。"
                    if [ "${use_tui}" = "y" ]; then
                        reinstall=$(whiptail --title "Napcat Installer" --yesno "版本已满足要求, 是否重装。" 15 50 3>&1 1>&2 2>&3)
                        if [ $? -eq 0 ]; then
                            force="y"
                        else
                            force="n"
                            update_linuxqq_config "${linuxqq_installed_version}" "${linuxqq_installed_build}"
                        fi
                    else
                        log "是否强制重装, 10s超时跳过重装(y/n)"
                        read -t 10 -r force
                        if [[ $? -ne 0 ]]; then
                            log "超时未输入, 跳过重装"
                            force="n"
                            update_linuxqq_config "${linuxqq_installed_version}" "${linuxqq_installed_build}"
                        elif [[ "${force}" =~ ^[Yy]?$ ]]; then
                            force="y"
                            log "强制重装..."
                            install_linuxqq
                        elif [[ "${force}" == "n" ]]; then
                            force="n"
                            log "跳过重装"
                            update_linuxqq_config "${linuxqq_installed_version}" "${linuxqq_installed_build}"
                        else
                            force="n"
                            log "输入错误, 跳过重装"
                            update_linuxqq_config "${linuxqq_installed_version}" "${linuxqq_installed_build}"
                        fi
                    fi
                fi
            else
                install_linuxqq
            fi
        fi
    fi
}

function install_linuxqq() {
    #base_url="https://dldir1.qq.com/qqfile/qq/QQNT/${linuxqq_target_verhash}/linuxqq_${linuxqq_target_version}"
    get_system_arch
    log "安装LinuxQQ..."
    # if [ "${system_arch}" = "amd64" ]; then
    #     if [ "${package_installer}" = "rpm" ]; then
    #         qq_download_url="${base_url}_x86_64.rpm"
    #     elif [ "${package_installer}" = "dpkg" ]; then
    #         qq_download_url="${base_url}_amd64.deb"
    #     fi
    # elif [ "${system_arch}" = "arm64" ]; then
    #     if [ "${package_installer}" = "rpm" ]; then
    #         qq_download_url="${base_url}_aarch64.rpm"
    #     elif [ "${package_installer}" = "dpkg" ]; then
    #         qq_download_url="${base_url}_arm64.deb"
    #     fi
    # fi

    if [ "${system_arch}" = "amd64" ]; then
        if [ "${package_installer}" = "rpm" ]; then
            qq_download_url="https://dldir1.qq.com/qqfile/qq/QQNT/a7f1c5a0/linuxqq_3.2.17-34606_x86_64.rpm"
        elif [ "${package_installer}" = "dpkg" ]; then
            qq_download_url="https://dldir1.qq.com/qqfile/qq/QQNT/a7f1c5a0/linuxqq_3.2.17-34606_amd64.deb"
        fi
    elif [ "${system_arch}" = "arm64" ]; then
        if [ "${package_installer}" = "rpm" ]; then
            qq_download_url="https://dldir1.qq.com/qqfile/qq/QQNT/a7f1c5a0/linuxqq_3.2.17-34606_aarch64.rpm"
        elif [ "${package_installer}" = "dpkg" ]; then
            qq_download_url="https://dldir1.qq.com/qqfile/qq/QQNT/a7f1c5a0/linuxqq_3.2.17-34606_arm64.deb"
        fi
    fi

    if ! [[ -f "QQ.deb" || -f "QQ.rpm" ]]; then
        if [ "${qq_download_url}" = "" ]; then
            log "获取QQ下载链接失败, 请检查错误, 或者手动下载QQ安装包并重命名为QQ.deb或QQ.rpm(注意自己的系统架构)放到脚本同目录下。"
            exit 1
        fi
        log "QQ下载链接: ${qq_download_url}"
        log "如果无法下载请手动下载QQ安装包并重命名为QQ.deb或QQ.rpm(注意自己的系统架构)放到脚本同目录下"
    fi

    if [ "${package_manager}" = "dnf" ]; then
        if ! [ -f "QQ.rpm" ]; then
            sudo curl -L -# "${qq_download_url}" -o QQ.rpm
            if [ $? -ne 0 ]; then
                log "文件下载失败, 请检查错误。"
                exit 1
            else
                log "文件下载成功"
            fi
        else
            log "检测到当前目录下存在QQ安装包, 将使用本地安装包进行安装。"
        fi

        execute_command "sudo dnf localinstall -y ./QQ.rpm" "安装QQ"
        rm -f QQ.rpm
    elif [ "${package_manager}" = "apt-get" ]; then
        if ! [ -f "QQ.deb" ]; then
            sudo curl -L -# "${qq_download_url}" -o QQ.deb
            if [ $? -ne 0 ]; then
                log "文件下载失败, 请检查错误。"
                exit 1
            else
                log "文件下载成功"
            fi
        else
            log "检测到当前目录下存在QQ安装包, 将使用本地安装包进行安装。"
        fi

        execute_command "sudo apt-get install -f -y -qq ./QQ.deb" "安装QQ"
        execute_command "sudo apt-get install -y -qq libnss3" "安装libnss3"
        execute_command "sudo apt-get install -y -qq libgbm1" "安装libgbm1"
        log "安装libasound2中..."
        sudo apt-get install -y -qq libasound2
        if [ $? -eq 0 ]; then
            log "安装libasound2 成功"
        else
            log "安装libasound2 失败"
            log "尝试安装libasound2t64中..."
            sudo apt-get install -y -qq libasound2t64
            wait $!
            if [ $? -eq 0 ]; then
                log "安装libasound2 成功"
            else
                log "安装libasound2t64 失败"
                exit 1
            fi
        fi
        sudo rm -f QQ.deb
    fi
    update_linuxqq_config "${linuxqq_target_version}" "${linuxqq_target_build}"
}

function update_linuxqq_config() {
    log "正在更新用户QQ配置..."

    confs=$(sudo find /home -name "config.json" -path "*/.config/QQ/versions/*" 2>/dev/null)
    if [ -f "/root/.config/QQ/versions/config.json" ]; then
        confs="/root/.config/QQ/versions/config.json ${confs}"
    fi

    for conf in ${confs}; do
        log "正在修改 ${conf}..."
        sudo jq --arg targetVer "${1}" --arg buildId "${2}" \
            '.baseVersion = $targetVer | .curVersion = $targetVer | .buildId = $buildId' "${conf}" >"${conf}.tmp" &&
            sudo mv "${conf}.tmp" "${conf}" || {
            log "QQ配置更新失败! "
            exit 1
        }
    done
    log "更新用户QQ配置成功..."
}

function check_napcat() {
    napcat_target_version=$(jq -r '.version' "./NapCat/package.json")
    if [[ -z "${napcat_target_version}" || "${napcat_target_version}" == "null" ]]; then
        log "无法获取NapCatQQ版本, 请检查错误。"
        exit 1
    else
        log "最新NapCatQQ版本: v${napcat_target_version}"
    fi

    if [ "$force" = "y" ]; then
        log "强制重装模式..."
        install_napcat
    else
        if [ -d "${TARGET_FOLDER}/napcat" ]; then
            napcat_installed_version=$(jq -r '.version' "${TARGET_FOLDER}/napcat/package.json")
            IFS='.' read -r i1 i2 i3 <<<"${napcat_installed_version}"
            IFS='.' read -r t1 t2 t3 <<<"${napcat_target_version}"
            if ((i1 < t1 || (i1 == t1 && i2 < t2) || (i1 == t1 && i2 == t2 && i3 < t3))); then
                install_napcat
            else
                log "已安装最新版本, 无需更新。"
            fi
        else
            install_napcat
        fi
    fi
}

function install_napcat() {
    if [ ! -d "${TARGET_FOLDER}/napcat" ]; then
        sudo mkdir -p "${TARGET_FOLDER}/napcat/"
    fi

    log "正在移动文件..."
    sudo cp -r -f ./NapCat/* "${TARGET_FOLDER}/napcat/"
    if [ $? -ne 0 -a $? -ne 1 ]; then
        log "文件移动失败, 请检查错误。"
        clean
        exit 1
    else
        log "移动文件成功"
    fi

    sudo chmod -R 777 "${TARGET_FOLDER}/napcat/"
    log "正在修补文件..."
    sudo echo "(async () => {await import('file:///${TARGET_FOLDER}/napcat/napcat.mjs');})();" >/opt/QQ/resources/app/loadNapCat.js
    if [ $? -ne 0 ]; then
        log "loadNapCat.js文件写入失败, 请检查错误。"
        clean
        exit 1
    else
        log "修补文件成功"
    fi
    modify_qq_config
    clean
}

function modify_qq_config() {
    log "正在修改QQ启动配置..."

    if sudo jq '.main = "./loadNapCat.js"' /opt/QQ/resources/app/package.json >./package.json.tmp; then
        sudo mv ./package.json.tmp /opt/QQ/resources/app/package.json
        echo "修改QQ启动配置成功..."
    else
        echo "修改QQ启动配置失败..."
        exit 1
    fi
}

# 当use_cli为y时, 检测是否安装过napcat-cli。
function check_napcat_cli() {
    if [ "${use_cli}" = "y" ]; then
        if [ -f "/usr/local/bin/napcat" ]; then
            log "检测到已安装的 TUI-CLI, 开始更新..."
            install_napcat_cli
            log "TUI-CLI 更新成功。"
        else
            log "开始安装 TUI-CLI..."
            install_napcat_cli
            log "TUI-CLI 安装成功。"
        fi
    else
        log "跳过安装/更新 TUI-CLI (用户未选择或使用 --cli n)。"
    fi
}

# TODO:TUI
function install_napcat_cli() {
    log "准备安装/更新 NapCatQQ TUI-CLI 及其组件..."
    network_test "Github" # Ensure proxy is tested/set for Github downloads

    # Define files, URLs, and targets
    local base_url="https://raw.githubusercontent.com/NapNeko/NapCat-Installer/main/script"
    local target_dir="/usr/local/bin"
    local files_to_download=("napcat" "_napcat_Boot" "_napcat_Config")
    local download_failed=false

    for file_name in "${files_to_download[@]}"; do
        local download_url="${target_proxy:+${target_proxy}/}${base_url}/${file_name}"
        local temp_file="${file_name}_download"
        local target_path="${target_dir}/${file_name}"

        log "下载 ${file_name} 从 ${download_url}..."
        # Download to a temporary file first
        sudo curl -L -# "${download_url}" -o "./${temp_file}"

        if [ $? -ne 0 ]; then
            log "${file_name} 文件下载失败, 请检查网络或链接。"
            sudo rm -f "./${temp_file}" # Clean up failed download
            download_failed=true
            continue # Try downloading the next file
        fi
        log "${file_name} 文件下载成功: ./${temp_file}"

        log "设置 ${file_name} 文件权限并移动到 ${target_path}..."
        sudo chmod +x "./${temp_file}"
        if [ $? -ne 0 ]; then
            log "设置 ${file_name} 文件执行权限失败: ./${temp_file}"
            sudo rm -f "./${temp_file}"
            download_failed=true
            continue
        fi

        # Move the file to the target location
        sudo mv "./${temp_file}" "${target_path}"
        if [ $? -ne 0 ]; then
            log "移动 ${file_name} 文件到 ${target_path} 失败, 请检查权限。"
            # Attempt to clean up downloaded file if move failed
            if [ -f "./${temp_file}" ]; then # Check if it still exists before removing
                sudo rm -f "./${temp_file}"
            fi
            download_failed=true
            continue
        else
            log "${file_name} 文件成功移动到 ${target_path}"
        fi
    done

    if ${download_failed}; then
        log "警告: 部分或全部 TUI-CLI 组件安装失败, 但核心安装可能已完成。"
        return 1 # Indicate partial or complete failure
    else
        log "所有 TUI-CLI 组件安装/更新成功。"
        return 0 # Indicate success
    fi
}

function generate_docker_command() {
    network_test "Docker" >/dev/null 2>&1
    local qq=${1}
    local mode=${2}
    docker_cmd1="sudo docker run -d -e ACCOUNT=${qq}"
    docker_cmd2="--name napcat --restart=always ${target_proxy:+${target_proxy}/}mlikiowa/napcat-docker:latest"
    docker_ws="${docker_cmd1} -e WS_ENABLE=true -e NAPCAT_GID=$(id -g) -e NAPCAT_UID=$(id -u) -p 3001:3001 -p 6099:6099 ${docker_cmd2}"
    docker_reverse_ws="${docker_cmd1} -e WSR_ENABLE=true -e NAPCAT_GID=$(id -g) -e NAPCAT_UID=$(id -u) -e WS_URLS='[]' -p 6099:6099 ${docker_cmd2}"
    docker_reverse_http="${docker_cmd1} -e HTTP_ENABLE=true  -e NAPCAT_GID=$(id -g) -e NAPCAT_UID=$(id -u) -e HTTP_POST_ENABLE=true -e HTTP_URLS='[]' -p 3000:3000 -p 6099:6099 ${docker_cmd2}"
    if [ "${mode}" = "ws" ]; then
        echo "${docker_ws}"
    elif [ "${mode}" = "reverse_ws" ]; then
        echo "${docker_reverse_ws}"
    elif [ "${mode}" = "reverse_http" ]; then
        echo "${docker_reverse_http}"
    else
        exit 1
    fi
}

function get_qq() {
    while true; do
        qq=$(whiptail --title "Napcat Installer" --inputbox "请输入您的 QQ 号:" 10 50 3>&1 1>&2 2>&3)

        if [ $? -eq 0 ]; then
            if [ -z "${qq}" ]; then
                whiptail --title "错误" --msgbox "QQ 号不能为空，请重新输入。" 10 30
            else
                get_mode
                break
            fi
        else
            break
        fi
    done
}

function get_mode() {
    while true; do
        mode=$(whiptail --title "选择模式" --menu "请选择运行模式:" 15 50 3 \
            "ws" "WebSocket 模式" \
            "reverse_ws" "反向 WebSocket 模式" \
            "reverse_http" "反向 HTTP 模式" 3>&1 1>&2 2>&3)

        if [ $? -eq 0 ]; then
            if [ -z "${mode}" ]; then
                whiptail --title "错误" --msgbox "模式选择不能为空，请重新选择。" 10 30
            else
                get_confirm
                break
            fi
        else
            break
        fi
    done
}

function get_confirm() {
    if (whiptail --title "确认" --yesno "您输入的 QQ 号是: ${qq}\n您选择的模式是: ${mode}\n\n是否继续下一步?" 15 50); then
        confirm="y"
        docker_install
    else
        return
    fi
}

function docker_install() {
    if ! command -v docker &>/dev/null; then
        detect_package_manager
        if [ "${package_manager}" = "apt-get" ]; then
            execute_command "sudo apt-get update -y -qq" "更新软件包列表"
            execute_command "sudo apt-get install -y -qq curl" "安装 curl"
        elif [ "${package_manager}" = "dnf" ]; then
            execute_command "sudo dnf install -y epel-release" "安装epel"
            execute_command "sudo dnf install --allowerasing -y curl" "安装 curl"
        fi
        execute_command "sudo curl -fsSL https://get.docker.com -o get-docker.sh" "下载docker安装脚本"
        sudo chmod +x get-docker.sh
        execute_command "sudo sh get-docker.sh" "安装docker"
    else
        log "Docker已安装"
    fi

    while true; do
        if [[ -z ${qq} ]]; then
            log "请输入QQ号: "
            read -r qq
        fi
        if [[ -z ${mode} ]]; then
            log "请选择模式 (ws/reverse_ws/reverse_http) "
            read -r mode
        fi
        docker_command=$(generate_docker_command "${qq}" "${mode}")
        if [[ -z ${docker_command} ]]; then
            log "模式错误, 无法生成命令"
            confirm="n"
        else
            log "即将执行以下命令: ${docker_command}\n"
        fi
        if [[ -z ${confirm} ]]; then
            log "是否继续? (y/n) "
            read confirm
        fi
        case ${confirm} in
        y | Y) break ;;
        *)
            confirm=""
            mode=""
            qq=""
            ;;
        esac
    done
    eval "${docker_command}"
    if [ $? -ne 0 ]; then
        log "Docker启动失败, 请检查错误。"
        exit 1
    fi
    log "安装成功"
}

function show_main_info() {
    log "\n---------------- Shell 安装完成 ----------------"
    log ""
    log "${GREEN}启动 QQ (需要图形环境或 Xvfb):${NC}"
    log "  ${CYAN}xvfb-run -a qq --no-sandbox${NC}"
    log ""
    log "${GREEN}后台运行 QQ (使用 screen):${NC}"
    log "  启动: ${CYAN}screen -dmS napcat bash -c \"xvfb-run -a qq --no-sandbox\"${NC}"
    log "  带账号启动: ${CYAN}screen -dmS napcat bash -c \"xvfb-run -a qq --no-sandbox -q QQ号码\"${NC}"
    log "  附加到会话: ${CYAN}screen -r napcat${NC} (按 Ctrl+A 然后按 D 分离)"
    log "  停止会话: ${CYAN}screen -S napcat -X quit${NC}"
    log ""
    log "${GREEN}Napcat 相关信息:${NC}"
    log "  安装位置: ${TARGET_FOLDER}/napcat"
    log "  WebUI Token: 查看 ${TARGET_FOLDER}/napcat/config/webui.json 文件获取"
    log ""
    if [ "${use_cli}" = "y" ]; then
        show_cli_info
    else
        log "${YELLOW}未安装 TUI-CLI 工具。如需使用便捷命令管理, 请重新运行安装脚本并选择安装 TUI-CLI (--cli y)。${NC}"
    fi
    log "--------------------------------------------------"
}
# TODO：TUI
function show_cli_info() {
    log "${GREEN}TUI-CLI 工具用法 (napcat):${NC}"
    log "  启动: ${CYAN}sudo napcat${NC}"
}

function shell_help() {
    # Use print_introduction for general info, keep this for specific args
    echo -e "${YELLOW}命令选项 (高级用法):${NC}"
    echo "您可以在 原安装命令 后面添加以下参数:"
    echo ""
    echo "  --tui                     使用 TUI 可视化交互安装"
    echo "  --docker [y/n]            选择安装方式 (y: Docker, n: Shell)"
    echo "  --cli [y/n]               (Shell安装时) 是否安装 TUI-CLI 工具 (${YELLOW}推荐${NC})(允许你在ssh、没有桌面、WebUI难以使用的情况下${YELLOW}可视化交互${NC}配置Napcat)"
    echo "  --force                   (Shell安装时) 强制重装 LinuxQQ 和 NapCat"
    echo "  --proxy [0-n]             指定下载代理序号 (0: 不使用, 1-n: 内置列表)"
    echo "  --qq \"<号码>\"             (Docker安装时) 指定 QQ 号码"
    echo "  --mode [ws|reverse_ws|...] (Docker安装时) 指定运行模式"
    echo "  --confirm [y]             (Docker安装时) 跳过最终确认直接执行"
    echo ""
    echo -e "${YELLOW}使用示例:${NC}"
    echo "  # 使用 TUI 安装:"
    echo "  ${CYAN}curl -o napcat.sh https://.../install.sh && sudo bash napcat.sh --tui${NC}"
    echo ""
    echo "  # Docker 安装 (指定 QQ, 模式, 代理, 并跳过确认):"
    echo "  ${CYAN}curl -o napcat.sh https://.../install.sh && sudo bash napcat.sh --docker y --qq \"123456789\" --mode ws --proxy 1 --confirm y${NC}"
    echo ""
    echo "  # Shell 安装 (不装 TUI-CLI, 不用代理, 强制重装):"
    echo "  ${CYAN}curl -o napcat.sh https://.../install.sh && sudo bash napcat.sh --docker n --cli n --proxy 0 --force${NC}"
    echo ""
}

function chekc_whiptail() {
    if [[ "${TERM}" != "xterm" && "${TERM}" != "xterm-256color" ]]; then
        log "错误, 当前终端不支持 whiptail。请使用普通方式或使用支持 whiptail 的终端，例如 xterm 或 xterm-256color。查看当前终端类型请使用echo \$TERM"
        exit 1
    fi

    if ! command -v whiptail &>/dev/null; then
        log "未发现whiptail, 开始安装..."
        detect_package_manager

        if [ "${package_manager}" = "apt-get" ]; then
            execute_command "sudo apt-get update -y -qq" "更新软件包列表"
            execute_command "sudo apt-get install -y -qq whiptail" "安装whiptail"
        elif [ "${package_manager}" = "dnf" ]; then
            execute_command "sudo dnf install -y epel-release" "安装epel"
            execute_command "sudo dnf install --allowerasing -y whiptail" "安装whiptail"
        fi
    fi
}

function main_tui() {
    chekc_whiptail
    while true; do
        choice=$(
            whiptail --title "Napcat Installer" \
                --menu "\n欢迎使用Napcat安装脚本\n请使用方向键(鼠标滚轮)+回车键使用" 12 50 3 \
                "1" "🐚 shell安装" \
                "2" "🐋 docker安装" \
                "3" "🚪 退出" 3>&1 1>&2 2>&3
        )

        case $choice in
        "1")
            install_dependency
            download_napcat
            check_linuxqq
            check_napcat
            check_napcat_cli
            whiptail --title "Napcat Installer" --msgbox "     安装完成" 8 24
            show_main_info
            clean
            ;;
        "2")
            get_qq
            whiptail --title "Napcat Installer" --msgbox "     安装完成" 8 24
            ;;
        "3")
            clean
            exit 0
            ;;
        *)
            clean
            exit 0
            ;;
        esac
    done
}

# --- 脚本主逻辑开始 ---

# 1. 分析参数
while [[ $# -gt 0 ]]; do
    case $1 in
    --tui)
        use_tui="y"
        shift # 消耗参数名
        ;;
    --docker)
        use_docker="$2"
        shift # 消耗参数名
        shift # 消耗参数值
        ;;
    --qq)
        qq="$2"
        shift # 消耗参数名
        shift # 消耗参数值
        ;;
    --mode)
        mode="$2"
        shift # 消耗参数名
        shift # 消耗参数值
        ;;
    --confirm)
        # Allow --confirm or --confirm y
        if [[ "$2" =~ ^[Yy]$ ]] || [[ $# -eq 1 ]]; then
            confirm="y"
            shift # 消耗参数名
            # Check if there was a value and shift it
            if [[ "$2" =~ ^[Yy]$ ]]; then
                shift # 消耗多余的参数值
            fi
        else
            # Handle cases like --confirm n or invalid value
            confirm="n" # Explicitly set to no if value is not 'y'
            shift       # 消耗参数名
            shift       # 消耗参数值
        fi
        ;;
    --force)
        force="y"
        shift # 消耗参数名。!!旧的脚本这里似乎有问题!!
        ;;
    --proxy)
        proxy_num_arg="$2" # 保存代理序号
        shift              # 消耗参数名
        shift              # 消耗参数值
        ;;
    --cli)
        use_cli="$2"
        shift # 消耗参数名
        shift # 消耗参数值
        ;;
    --help | -h)
        logo
        print_introduction
        shell_help
        exit 0
        ;;
    *)
        echo "未知参数: $1"
        shell_help
        exit 1
        ;;
    esac
done

# 2. 初始化
clear
logo
print_introduction
check_sudo
check_root

# 3. 首先处理TUI安装
if [ "${use_tui}" = "y" ]; then
    main_tui # 调用TUI安装函数
    exit $?  # 退出TUI安装函数的状态码
fi

# 4. 非TUI模式，处理没有被设置的arg

# 询问DOCKER
if [ -z "${use_docker}" ]; then
    log "选择安装方式: Docker (容器化) 或 Shell (直接安装)?"
    log "输入 'y' 使用 Docker, 输入 'n' 使用 Shell。"
    read -t 10 -p "[y/N] (10秒后默认 N): " use_docker_input
    echo "" # Newline after read

    if [[ $? -ne 0 ]]; then
        log "超时未输入, 默认使用 Shell 安装。"
        use_docker="n"
    elif [[ "${use_docker_input}" =~ ^[Yy]$ ]]; then
        log "选择使用 Docker 安装。"
        use_docker="y"
    elif [[ "${use_docker_input}" =~ ^[Nn]$ ]] || [ -z "${use_docker_input}" ]; then
        log "选择使用 Shell 安装。"
        use_docker="n"
    else
        log "输入无效 ('${use_docker_input}'), 默认使用 Shell 安装。"
        use_docker="n"
    fi
fi

# 询问CLI
if [ "${use_docker}" = "n" ] && [ -z "${use_cli}" ]; then
    log "是否安装 NapCat TUI-CLI (命令行工具)?"
    log "输入 'y' 安装, 输入 'n' 跳过。"
    read -t 10 -p "[y/N] (10秒后默认 N): " use_cli_input # 默认不安装
    echo ""

    if [[ $? -ne 0 ]]; then
        log "超时未输入, 默认不安装 CLI。"
        use_cli="n"                               # 默认不安装
    elif [[ "${use_cli_input}" =~ ^[Yy]$ ]]; then # 只有 y 或 Y 才安装
        log "选择安装 CLI。"
        use_cli="y"
    # elif [[ "${use_cli_input}" =~ ^[Nn]$ ]] || [ -z "${use_cli_input}" ]; then # Explicit 'n' or empty defaults to no
    #     log "选择不安装 CLI。"
    #     use_cli="n"
    else # 其他情况
        log "选择或超时默认为不安装 CLI。"
        use_cli="n"
    fi
fi

# 5. 执行安装

if [ "${use_docker}" = "y" ]; then
    # Docker install needs qq, mode, confirm. Call docker_install which handles getting these if needed.
    docker_install
    exit_status=$?
    if [ ${exit_status} -eq 0 ]; then
        log "Docker 安装流程完成。"
    else
        log "Docker 安装流程失败。"
    fi
    exit ${exit_status}
elif [ "${use_docker}" = "n" ]; then
    log "开始 Shell 安装流程..."
    install_dependency
    download_napcat
    check_linuxqq    # Uses 'force' variable if set by args
    check_napcat     # Uses 'force' variable if set by args
    check_napcat_cli # Uses 'use_cli' variable determined above or by args
    show_main_info
    clean
    log "Shell 安装流程完成。"
    exit 0
else
    # This case should not be reached if logic above is correct
    log "错误: 无效的安装选项 (use_docker=${use_docker})。"
    exit 1
fi
