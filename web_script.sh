# File to force new js to be loaded on every deployment for flutter web


APP_DIR="$(
  cd -P "$(dirname "${BASH_SOURCE[0]}")"
  pwd
)"


# Start cache breaking

BUILD_HASH=$((1 + $RANDOM % 100000))
HASHED_FILE=""

fileExtHash() {
  SEPERATOR=$(echo $1 | tail -c 2)
  F_EXT=$(echo $1 | cut -d"$SEPERATOR" -f 1)
  HASHED_EXT=$F_EXT"?"$BUILD_HASH$SEPERATOR
  HASHED_FILE=$HASHED_EXT
}

replacePath() {
  INPUT_FILE=$1
  TARGET_EXT=$2
  TARGET_HASHED_EXT=$3
  cat $INPUT_FILE | awk -v srch="$TARGET_EXT" -v repl="$TARGET_HASHED_EXT" '{ sub(srch,repl,$0); print $0 }' >tmp && mv tmp $INPUT_FILE
}

# Force new js to be loaded by the browser.
# Breaking cache on js and json files in index.html

HTML_EXTS=("js" "json")

echo "✅📦 Hashing assets for this release"

for EXT_ROOT in ${HTML_EXTS[@]}; do
  # echo $EXT
  EXT_LIST=("."$EXT_ROOT\" "."$EXT_ROOT\')
  for EXT in ${EXT_LIST[@]}; do
    fileExtHash $EXT
    replacePath $APP_DIR/build/web/index.html $EXT $HASHED_FILE
  done
done

echo "✅🦋 Flutter for web build complete!"
