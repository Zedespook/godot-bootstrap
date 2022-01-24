import os
import sys


def main():
    # Check if there is an argument passed to the script
    if len(sys.argv) < 1:
        print("Please provide an argument!")
        print("  Arguments:")
        print("    --2d-topdown")
        print("    --2d-side")
        print("    --2d-topdown-multiplayer")
        print("    --2d-side-multiplayer")
        return

    # Checkout to the branch provided within the arugment
    if sys.argv[1] == "--2d-topdown":
        os.system("git checkout 2d-topdown")
    elif sys.argv[1] == "--2d-side":
        os.system("git checkout 2d-side")
    elif sys.argv[1] == "--2d-topdown-multiplayer":
        os.system("git checkout 2d-topdown-multiplayer")
    elif sys.argv[1] == "--2d-side-multiplayer":
        os.system("git checkout 2d-side-multiplayer")


if __name__ == "__main__":
    main()
