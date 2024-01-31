# Function to perform basic arithmetic operations
calculator <- function() {
  # Input: Two numbers and an operator choice
  num1 <- as.numeric(readline("Enter the first number: "))
  num2 <- as.numeric(readline("Enter the second number: "))
  
  # Display operation choices
  cat("Choose an operation:\n")
  cat("1. Add\n")
  cat("2. Subtract\n")
  cat("3. Multiply\n")
  cat("4. Divide\n")
  choice <- as.numeric(readline("Enter your choice (1 to 4): "))
  
  # Switch case to perform the operation based on the user's choice
  result <- switch(
    choice,
    "1" = num1 + num2,
    "2" = num1 - num2,
    "3" = num1 * num2,
    "4" = {
      if (num2 != 0) {
        num1 / num2
      } else {
        "Error: Division by zero"
      }
    },
    "Invalid choice"
  )
  
  # Output the result with a proper message
  if (is.numeric(result)) {
    cat("Result:", result, "\n")
  } else {
    cat(result, "\n")
  }
}

# Call the calculator function
calculator()