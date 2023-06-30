CREATE TRIGGER check_product_availability
BEFORE INSERT ON Request
FOR EACH ROW
BEGIN
    DECLARE request_count INT;
    DECLARE product_quantity INT;
    
    -- Get the count of requests with state "accepted" for the same product
    SELECT COUNT(*) INTO request_count
    FROM Request
    INNER JOIN RequestEvent ON Request.requestId = RequestEvent.requestId
    WHERE Request.productId = NEW.productId
    AND RequestEvent.state = 'accepted';
    
    -- Get the available quantity of the product
    SELECT availableQuantity INTO product_quantity
    FROM Product
    WHERE productId = NEW.productId;
    
    -- Check if the request count exceeds the available quantity
    IF request_count >= product_quantity THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Request count exceeds available quantity';
    END IF;
END;
