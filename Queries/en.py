import re

pattern = "^en"
for i in ["23"]:
    num = i
    raw_data = open(f"pageviews-20210120-{num}0000", "r", encoding="utf8")
    formated_data = open(f"formated_{num}.txt", "a+", encoding="utf8")

    for i in raw_data:
        sent = re.match(pattern, str(i).strip("\n"))
        if sent:
            formated_data.write(sent.string + "\n")
    raw_data.close()
    formated_data.close()
