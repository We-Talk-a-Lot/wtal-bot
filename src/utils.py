import random
import re

from hashlib import sha256

def normalize_name(name):
    return name[0].upper() + name[1:]

def extract_name_and_tag(name):
    return name[:-5], name[-4:]

def generate_random_key(id):
    return sha256("{}{}{}".format(random.randint(100, 500), id, random.randint(900, 1000)).encode("utf-8")).hexdigest()

subscripts = re.split("", "₀₁₂₃₄₅₆₇₈₉")[1:-1]

def get_discord_nick_format(name):
    name, tag = extract_name_and_tag(normalize_name(name))
    return name + " # " + subscripts[int(tag[0])] + subscripts[int(tag[1])] + subscripts[int(tag[2])] + subscripts[int(tag[3])] # sorry but yes
