# Experiment 16: Write a Python program to represent knowledge using a Semantic Network (as a graph/dictionary) and infer new facts using Forward Chaining.

semantic_network = {
    "Dog": {
        "is_a": "Animal",
        "has": "Tail",
        "can": "Bark"
    },
    "Cat": {
        "is_a": "Animal",
        "has": "Tail",
        "can": "Meow"
    },
    "Animal": {
        "needs": "Food",
        "can": "Move"
    }
}

# Display Semantic Network
for object, relations in semantic_network.items():
    for relation, value in relations.items():
        print(object, "----", relation, "---->", value)

