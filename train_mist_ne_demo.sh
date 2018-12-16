OUTDIR=/vagrant/models
mkdir -p $OUTDIR

# intsall ne task
"$MAT_PKG_HOME"/bin/MATManagePluginDirs install "$MAT_PKG_HOME"/sample/ne

# train model
"$MAT_PKG_HOME"/bin/MATModelBuilder --task "Named Entity" --model_file $OUTDIR/ne_model \
--input_files "$MAT_PKG_HOME/sample/ne/resources/data/json/*.json"

# set as default model
"$MAT_PKG_HOME"/bin/MATModelBuilder --task "Named Entity" --save_as_default_model \
--input_files "$MAT_PKG_HOME/sample/ne/resources/data/json/*.json"

# start ui
nohup "$MAT_PKG_HOME"/bin/MATWeb &
