pagedown::find_chrome()
options(pagedown.remote.maxattempts=10) # number of attempt in total
options(pagedown.remote.sleeptime=2) # time in second between attempt
pagedown::chrome_print("index.html",verbose = TRUE)
pdftools::pdf_subset(input = "index.pdf", pages =  2:11)
fs::file_copy(path = "index_output.pdf", new_path = "index.pdf", overwrite = TRUE)

