# access_manager       /bin/sh -c java -Dspring.p ...   Up       0.0.0.0:10001->10001/tcp                                                                                                   
curl -X GET http://localhost:10001/access 

# basket               /bin/sh -c java -Dspring.p ...   Up       0.0.0.0:10003->10003/tcp                                                                                                   
curl -X GET http://localhost:10003/basket 

#banner               npm start                        Up       0.0.0.0:10002->10002/tcp, 3005/tcp                                                                                         
curl -X GET http://localhost:10002/banner 

#benefits             npm start                        Up       0.0.0.0:10004->10004/tcp, 3005/tcp                                                                                         
curl -X GET http://localhost:10004/benefits

#billing              /bin/sh -c java -Dspring.p ...   Exit 1                                                                                                                              
curl -X GET http://localhost:3030/billing

#calendar             npm start                        Exit 1                                                                                                                              
curl -X GET http://localhost:3002/calendar 

#fare                 /bin/sh -c java -Dspring.p ...   Exit 1                                                                                                                              
curl -X GET http://localhost:8090/fare 

#inventory            /bin/sh -c java -Dspring.p ...   Up       0.0.0.0:10009->10009/tcp                                                                                                   
curl -X GET http://localhost:10009/inventory

#order                /bin/sh -c java -Dspring.p ...   Exit 1                                                                                                                              
curl -X GET http://localhost:8093/order

#postal_code          npm start                        Up       0.0.0.0:10013->10013/tcp, 3005/tcp                                                                                         
curl -X GET http://localhost:10013/postalcode

#product              /bin/sh -c java -Dspring.p ...   Exit 1                                                                                                                              
curl -X GET http://localhost:3090/product

#category             npm start                        Exit 1                                                                                                                              
#mail_relay           npm start                        Exit 1                                                                                                                              
#newsletter           npm start                        Up       0.0.0.0:10011->10011/tcp, 3005/tcp                                                                                         
#supplier             npm start                        Exit 1                                                                                                                              
#user_manager         /bin/sh -c java -Dspring.p ...   Up       0.0.0.0:10017->10017/tcp 