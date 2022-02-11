
churn_calculation <- function(data, customerid) {

  churn_model <- glm(formula = I(Exited) ~ CreditScore + Gender + Age + Tenure + Balance + NumOfProducts + HasCrCard + IsActiveMember + EstimatedSalary, family = "binomial", data = data)

  data[,Churn_Prediction:=predict(churn_model, data, type = "response")]

  churn_customer <- data[CustomerId == customerid, Churn_Prediction]

  if (customerid %in% data$CustomerId ) {
    print(churn_customer)
  } else {
    print("Customer not found")
  }

}



