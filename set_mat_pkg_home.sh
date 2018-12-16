MAT_PKG_HOME=`find ~ -type d -name "MIST*"` 
grep -q MAT_PKG_HOME $HOME/.profile || echo export MAT_PKG_HOME="$MAT_PKG_HOME"/src/MAT >> $HOME/.profile
