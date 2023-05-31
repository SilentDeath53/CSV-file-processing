using CSV

function process_csv(filename)
    data = CSV.read(filename)

    println("CSV File Contents:")
    println(data)

    ages = data[:, "Age"]
    avg_age = mean(ages)
    println("Average Age: $avg_age")

    city = "New York"
    filtered_data = data[data[:, "City"] .== city, :]
    println("Customers from $city:")
    println(filtered_data)
end

process_csv("customers.csv")
