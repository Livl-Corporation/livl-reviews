CREATE TRIGGER delete_user_related_data
     BEFORE DELETE ON User
     FOR EACH ROW
     BEGIN
       -- Delete the associated conditions
       DELETE FROM Condition WHERE createdBy = OLD.userId;
       
       -- Delete the associated products
       DELETE FROM Product WHERE createdBy = OLD.userId;
       
       -- Delete the associated requests
       DELETE FROM Request WHERE createdBy = OLD.userId OR recipient = OLD.userId;
       
       -- Delete the associated reviews
       DELETE FROM Review WHERE createdBy = OLD.userId;
       
       -- Delete the associated subscriptions
       DELETE FROM Subscription WHERE follower = OLD.userId;
       
       -- Delete the associated product media
       DELETE FROM ProductMedia WHERE productId IN (SELECT productId FROM Product WHERE createdBy = OLD.userId);
       
       -- Delete the associated review media
       DELETE FROM ReviewMedia WHERE reviewId IN (SELECT reviewId FROM Review WHERE createdBy = OLD.userId);
     END;