# Simple Interest Calculator

A simple command-line tool and script designed to calculate simple interest based on principal amount, annual interest rate, and time period.

## Description

This project provides a straightforward implementation of a **Simple Interest Calculator**. Simple interest is a quick and easy method of calculating the interest charge on a loan or investment. It is determined by multiplying the daily interest rate by the principal by the number of days that elapse between payments.

### Formula

The calculation is based on the standard mathematical formula:

$$\text{Simple Interest} = \frac{P \times R \times T}{100}$$

Where:
- **P** = Principal amount (the initial amount of money borrowed or invested)
- **R** = Annual interest rate (percentage per year)
- **T** = Time duration (in years)

---

## Features

- **Quick Calculations:** Instantly computes total interest accrued over a specified time frame.
- **Total Amount Output:** Calculates both the total interest earned/owed and the total final value ($A = P + \text{Interest}$).
- **Easy Integration:** Clean, lightweight code suitable for scripts or web applications.

---

## Usage & Example

### Example Scenario

If you invest **$1,000** ($P$) at an annual interest rate of **5%** ($R$) for **3 years** ($T$):

$$\text{Interest} = \frac{1000 \times 5 \times 3}{100} = \$150$$

- **Principal:** $1,000
- **Total Interest:** $150
- **Total Amount:** $1,150

### Code Snippet (Bash / Python Example)

```python
def calculate_simple_interest(principal, rate, time):
    """
    Calculates simple interest.
    :param principal: Initial amount (float)
    :param rate: Annual interest rate in % (float)
    :param time: Time in years (float)
    :return: Simple interest calculated
    """
    interest = (principal * rate * time) / 100
    return interest

# Example Usage
p = 1000  # Principal amount
r = 5     # Annual rate of interest (%)
t = 3     # Time in years

interest = calculate_simple_interest(p, r, t)
print(f"Simple Interest: ${interest}")
print(f"Total Amount: ${p + interest}")
