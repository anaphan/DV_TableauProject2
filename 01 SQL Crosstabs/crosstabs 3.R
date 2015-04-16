bdf <- data.frame(fromJSON(getURL(URLencode(gsub("\n", " ", '129.152.144.84:5001/rest/native/?query=
                                                 "SELECT type, type_count, nth_value(type_count, 2)
                                                 OVER (ORDER BY type_count desc) second
                                                 FROM CRIME_VIEW
                                                 ORDER BY 2,3 desc"
                                                 ')),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521/ORCL.usuniversi01134.oraclecloud.internal', USER='C##cs329e_php274', PASS='orcl_php274', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE))); tbl_df(bdf)