install.packages("quantmod")
install.packages("ggplot2")
install.packages("plotly")
install.packages("dplyr")
library(quantmod)
# Fetch stock data for Apple (AAPL)
stock_data <- getSymbols("AAPL", src = "yahoo", from = "2020-01-01", to = Sys.Date(), auto.assign = FALSE)
library(quantmod)
# Fetch stock data for Apple (AAPL)
stock_data <- getSymbols("AAPL", src = "yahoo", from = "2020-01-01", to = Sys.Date(), auto.assign = FALSE)
head(stock_data)  # Check the first few rows
stock_df <- data.frame(Date = index(stock_data), coredata(stock_data))
library(ggplot2)
# Plot the closing price over time
ggplot(stock_df, aes(x = Date, y = AAPL.Close)) +
geom_line(color = "blue") +
labs(title = "Apple Stock Closing Price", x = "Date", y = "Closing Price (USD)") +
theme_minimal()
# Calculate the moving averages
stock_df$SMA_50 <- zoo::rollapply(stock_df$AAPL.Close, width = 50, FUN = mean, fill = NA)
stock_df$SMA_200 <- zoo::rollapply(stock_df$AAPL.Close, width = 200, FUN = mean, fill = NA)
# Plot with moving averages
ggplot(stock_df, aes(x = Date)) +
geom_line(aes(y = AAPL.Close), color = "blue", size = 1) +
geom_line(aes(y = SMA_50), color = "red", size = 1) +
geom_line(aes(y = SMA_200), color = "green", size = 1) +
labs(title = "Apple Stock with Moving Averages", x = "Date", y = "Price (USD)") +
theme_minimal()
library(plotly)
# Create candlestick chart
candlestick_chart <- plot_ly(stock_df, x = ~Date, type = "candlestick",
open = ~AAPL.Open, close = ~AAPL.Close,
high = ~AAPL.High, low = ~AAPL.Low,
name = "AAPL Stock") %>%
layout(title = "Apple Stock Candlestick Chart", xaxis = list(title = "Date"),
yaxis = list(title = "Price (USD)"))
candlestick_chart
ggplot(stock_df, aes(x = Date, y = AAPL.Volume)) +
geom_bar(stat = "identity", fill = "skyblue") +
labs(title = "Apple Stock Trading Volume", x = "Date", y = "Volume") +
theme_minimal()
interactive_chart <- plot_ly(stock_df, x = ~Date, y = ~AAPL.Close, type = 'scatter', mode = 'lines') %>%
layout(title = "Apple Stock Price", xaxis = list(title = "Date"),
yaxis = list(title = "Closing Price (USD)"))
interactive_chart
