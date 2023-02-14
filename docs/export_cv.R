pagedown::find_chrome()
options(pagedown.remote.maxattempts=1000) # number of attempt in total
options(pagedown.remote.sleeptime=2) # time in second between attempt
pagedown::chrome_print("docs/index.html")
pdftools::pdf_subset(input = "docs/index.pdf", pages =  2:11)
fs::file_copy(path = "docs/index_output.pdf", new_path = "docs/index.pdf", overwrite = TRUE)

