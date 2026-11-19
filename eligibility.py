#"te a python program for legal eligibility checker that determines voting , driving employment .switch case t

def check_eligibility():
    print("Welcome to the Legal Eligibility Checker!")
    print("Please select the type of eligibility you want to check:")
    print("1. Voting")
    print("2. Driving")
    print("3. Employment")

    choice = input("Enter your choice (1/2/3): ")

    if choice == '1':
        age = int(input("Enter your age: "))
        if age >= 18:
            print("You are eligible to vote.")
        else:
            print("You are not eligible to vote.")

    elif choice == '2':
        age = int(input("Enter your age: "))
        has_license = input("Do you have a valid driving license? (yes/no): ").lower()
        if age >= 18 and has_license == 'yes':
            print("You are eligible to drive.")
        else:
            print("You are not eligible to drive.")

    elif choice == '3':
        age = int(input("Enter your age: "))
        has_experience = input("Do you have relevant work experience? (yes/no): ").lower()
        if age >= 18 and has_experience == 'yes':
            print("You are eligible for employment.")
        else:
            print("You are not eligible for employment.")

    else:
        print("Invalid choice. Please select a valid option.")