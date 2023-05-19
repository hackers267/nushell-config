# Installs a package and any packages that it depends
export extern "pnpm add" []
# Generates a pnpm-lock.yaml from an npm
export extern "pnpm import" []
# Runs a pnpm install followed immediately by a pnpm on. By default, any new package is installed as a
export extern "pnpm install-test" []
# Runs a pnpm install followed immediately by a pnpm on. By default, any new package is installed as a
export extern "pnpm it" []
