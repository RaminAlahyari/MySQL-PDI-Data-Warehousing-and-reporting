CREATE VIEW carchain_view_1 AS
SELECT idOrder, DateOrder, dimension_ordercustomer.QuantityOrder, idCustomer, FirstNameCustomer, LastNameCustomer, GenderCustomer, dimension_ordercustomer.CityCustomer
FROM dimension_ordercustomer
JOIN (
	SELECT CityCustomer, QuantityOrder
	FROM dimension_ordercustomer
	GROUP BY CityCustomer, QuantityOrder
) AS group_dim
ON dimension_ordercustomer.CityCustomer = group_dim.CityCustomer
	AND dimension_ordercustomer.QuantityOrder = group_dim.QuantityOrder
WHERE GenderCustomer = 'Male'
ORDER BY CityCustomer, QuantityOrder DESC, DateOrder;

SELECT * FROM carchain_view;