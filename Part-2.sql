create table Products(
PId int primary key,
PQ int,
PPrice decimal(10,2),
Discount decimal(5,2))

INSERT INTO Products (Pid, PQ, PPrice, Discount)
VALUES
    (1, 10, 100.00, 10.00),
    (2, 5, 50.00, 5.00),
    (3, 20, 200.00, 15.00);

	----caluculate discounted value
	create function CalculateDiscountedValue (
    @Price decimal(10, 2),
    @Discount decimal(5, 2)
)
returns decimal(10, 2)
as
begin
    declare @DiscountedValue decimal(10, 2);
    set @DiscountedValue = @Price - (@Price * @Discount / 100);
    return @DiscountedValue;
end

------all the details of product
select
    Pid as PID,
    PPrice as Price,
    Discount,
    dbo.CalculateDiscountedValue(PPrice, Discount) as PriceAfterDiscount
from Products