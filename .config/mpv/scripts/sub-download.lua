function download_subtitles()
    local path = mp.get_property("path")
    mp.osd_message("Đang săn phụ đề tiếng Việt...")
    t = mp.command_native({
        name = "run",
        args = {"subliminal", "download", "-l", "vi", path},
    })
    mp.osd_message("Xong rồi đó!")
end

mp.add_key_binding("S", "download-subs", download_subtitles)
