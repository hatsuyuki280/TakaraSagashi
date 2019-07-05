from surugayaparser import SurugayaParser

def jhws():
    instance = SurugayaParser()
    getparam = "category=&search_word=nekopara&adult_s=1&inStock=On&grid=t&rankBy=modificationTime%3Adescending"
    instance.set_target_url(getparam)
    items = instance.request_items(pages=1)
    # print(items)
    return items