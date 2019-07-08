from surugayaparser import SurugayaParser

def jhws(Category="", kwd="...", r18=1, instock="On"):
    instance = SurugayaParser()
    getparam = "category="+Category+"&search_word="+kwd+"&adult_s="+str(r18)+"&inStock="+instock+"&grid=t&rankBy=modificationTime%3Adescending"
    instance.set_target_url(getparam)
    items = instance.request_items(pages=1)
    # print(items)
    return items