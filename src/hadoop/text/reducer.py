#!/usr/bin/env python
import sys

# Reducer function to aggregate word counts
def reducer():
    current_word = None
    current_count = 0

    for line in sys.stdin:
        # Strip leading/trailing spaces and split the line into word and count
        line = line.strip()
        word, count = line.split('\t', 1)

        try:
            count = int(count)
        except ValueError:
            # Ignore lines that can't be converted to integers
            continue

        if current_word == word:
            current_count += count
        else:
            if current_word:
                # Output the previous word and its total count
                print(f"{current_word}\t{current_count}")
            current_word = word
            current_count = count

    # Output the last word and its total count
    if current_word == word:
        print(f"{current_word}\t{current_count}")

if __name__ == "__main__":
    reducer()

#chmod +x mapper.py
#chmod +x reducer.py
#yourfile.txt | python mapper.py | sort | python reducer.py

# hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-streaming.jar \
#  -files mapper.py,reducer.py \
#  -mapper "/usr/bin/python3 mapper.py" \
#  -reducer "/usr/bin/python3 reducer.py" \
#  -input /tmp/bigdata_nov_2024/hitesh/some_text.txt \
#  -output /tmp/bigdata_nov_2024/hitesh/output4