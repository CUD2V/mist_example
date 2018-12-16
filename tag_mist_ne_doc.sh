OUTDIR=/vagrant/output
mkdir -p $OUTDIR

# format document
"$MAT_PKG_HOME"/bin/MATEngine --task "Named Entity" --workflow Demo --steps "zone,tokenize" \
--input_file "$MAT_PKG_HOME"/sample/ne/resources/data/raw/voa1.txt --input_file_type raw \
--output_file "$OUTDIR"/voa1_txt.json --output_file_type mat-json

# tag document
"$MAT_PKG_HOME"/bin/MATEngine --task "Named Entity" --workflow Demo --steps "tag" \
--input_file "$OUTDIR"/voa1_txt.json --input_file_type mat-json \
--output_file "$OUTDIR"/voa1_txt.json --output_file_type mat-json \
--tagger_local
