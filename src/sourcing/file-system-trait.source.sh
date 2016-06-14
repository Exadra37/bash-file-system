#!/bin/bash
# @author Exadra37(Paulo Silva) <exadra37ingmailpointcom>
# @since  2016/05/21
# @link   http://exadra37.com

set -e

#################################################################################################################################################################
# Functions
#################################################################################################################################################################

    function getScriptDir
    {
        local script_dir

        script_dir=$( cd "$( dirname "$0" )" && pwd )

        echo "${script_dir}"
    }

    function Mkdir
    {
        local path="$1"

        mkdir "${path}"
    }

    function Create_Dir
    {
        local path="$1"

        mkdir -p "${path}"
    }

    function Touch_File
    {
        local file="$1"

        touch "${file}"
    }

    function Create_File
    {
        local file="$1"

        [ -f "${file}" ] || Touch_File "${file}"
    }

    function Append_To_File
    {
        local to_file="${1}"
        local content="${2}"

        echo "${content}" >> "${to_file}"
    }
