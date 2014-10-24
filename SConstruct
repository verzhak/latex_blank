
import os

env = Environment()

# Look in standard directory ~/texmf for .sty files
env["ENV"]["TEXMFHOME"] = os.path.join(os.environ["HOME"], "texmf")

Export("env")

SConscript("build.py", variant_dir = "build/", duplicate = 0)

