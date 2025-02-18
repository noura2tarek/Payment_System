# Payment System

# Description
 
Simple payment system using SOLID principles.                              
SOLID principles are a set of rules that we should follow while writing a program or a class
structure.                             
To achieve high quality code, reduce redundancy, increase maintainability.

This project consists of payment class and its methods (cash payment, credit payment).                 
While Applying SOLID principles to it.            

# Explanation

The **Payment Class** is an abstract class which has payAmount abstract method to pay the amount.          
We separate cash payment and credit card payment into two different classes to achieve single
responsibility principle and interface segregation principle.             

The **Cash Payment Class** implements the Payment class and overrides the payAmount method.         
The payment method prints a simple message of 'Cash payment of <amount> done successfully!'.

The **Credit Card Payment Class** implements the Payment class and overrides the payAmount method.          
The payment method prints a simple message of 'Payment of $amount using credit card done
successfully!'.          

So, the two classes applies liskov substitution principle.               

The **User Class** is a class which the user uses to checkout. it has checkout method which
accepts the amount and calls the payAmount method of the Payment class.            
The user constructor accepts the Payment class as a parameter which we can send to it any payment
method class like cash payment or credit card payment.            
So, it depends on abstraction not concrete implementation of certain payment method (Dependency
Inversion).          

So, we apply Open closed principle while we can add new payment method without
modifying User class.               

Then, in main file:                    
We create an instance of the Cash payment class and Credit card payment class.                
Then, we create two instance of the User class and pass to one user (Cash payment object) and
the other user Credit card payment object.                         
User1 uses Cash payment and user2 uses Credit card payment.           
And then prints the output using checkout method in the two user objects.             

# Structure

the main file in bin/main.dart.                            
the Payment class in bin/payment_class.dart.                 
the Cash payment class in bin/cash_payment_class.dart.                           
the Credit card payment class in bin/credit_card_payment_class.dart.                     
the User class in bin/user_class.dart.                               
**My output screenshot in the images folder.**

# How to run

Run the main file in bin/main.dart

--------------------------------------------

