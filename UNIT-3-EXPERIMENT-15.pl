# Resolution and Unification

# Facts
facts = ["dog(tom)"]

# Rule: All dogs are animals
def animal(x):
    if f"dog({x})" in facts:
        return True
    return False

# Query
goal = "tom"

if animal(goal):
    print("Theorem Proved: Tom is an animal")
else:
    print("Theorem Not Proved")

# Theorem Proved: Tom is an animal