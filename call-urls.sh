

# watch -n 10


# access_manager       /bin/sh -c java -Dspring.p ...   Up       0.0.0.0:10001->10001/tcp                                                                                                   
echo "# access_manager #"
curl --noproxy "*" -X GET http://localhost:10001/access 
echo "" && echo ""

# basket               /bin/sh -c java -Dspring.p ...   Up       0.0.0.0:10003->10003/tcp                                                                                                   
echo "# basket #"
curl --noproxy "*" -X GET http://localhost:10003/basket 
echo "" && echo ""

#banner               npm start                        Up       0.0.0.0:10002->10002/tcp, 3005/tcp                                                                                         
echo "# banner #"
curl --noproxy "*" -X GET http://localhost:10002/banner 
echo "" && echo ""

#benefits             npm start                        Up       0.0.0.0:10004->10004/tcp, 3005/tcp                                                                                         
echo "# benefits #"
curl --noproxy "*" -X GET http://localhost:10004/benefits
echo "" && echo ""

#billing              /bin/sh -c java -Dspring.p ...   Exit 1                                                                                                                              
echo "# billing #"
curl --noproxy "*" -X GET http://localhost:3030/billing
echo "" && echo ""

#calendar             npm start                        Exit 1                                                                                                                              
echo "# calendar #"
curl --noproxy "*" -X GET http://localhost:3002/calendar 
echo "" && echo ""

#fare                 /bin/sh -c java -Dspring.p ...   Exit 1                                                                                                                              
echo "# fare #"
curl --noproxy "*" -X GET http://localhost:8090/fare 
echo "" && echo ""

#inventory            /bin/sh -c java -Dspring.p ...   Up       0.0.0.0:10009->10009/tcp                                                                                                   
echo "# inventory #"
curl --noproxy "*" -X GET http://localhost:10009/inventory
echo "" && echo ""

#order                /bin/sh -c java -Dspring.p ...   Exit 1                                                                                                                              
echo "# order #"
curl --noproxy "*" -X GET http://localhost:8093/order
echo "" && echo ""

#postal_code          npm start                        Up       0.0.0.0:10013->10013/tcp, 3005/tcp                                                                                         
echo "# postal_code #"
curl --noproxy "*" -X GET http://localhost:10013/postalcode
echo "" && echo ""

#product              /bin/sh -c java -Dspring.p ...   Exit 1                                                                                                                              
echo "# product #"
curl --noproxy "*" -X GET http://localhost:3090/product
echo "" && echo ""

#category             npm start                        Exit 1                                                                                                                              
#mail_relay           npm start                        Exit 1                                                                                                                              
#newsletter           npm start                        Up       0.0.0.0:10011->10011/tcp, 3005/tcp                                                                                         
#supplier             npm start                        Exit 1                                                                                                                              
#user_manager         /bin/sh -c java -Dspring.p ...   Up       0.0.0.0:10017->10017/tcp 