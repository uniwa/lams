import codecs

# opens a file and converts input to true Unicode
with codecs.open("ApplicationResources_el_GR.properties", "rb", "unicode_escape") as my_input:
    contents = my_input.read()
    # type(contents) = unicode 

# opens a file with UTF-8 encoding
with codecs.open("utf8-out.txt", "wb", "utf8") as my_output:
    my_output.write(contents)