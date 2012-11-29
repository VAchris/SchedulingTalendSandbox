
declare namespace ns0="http://com.sap/b";

<OrdersByRecord>
{
for $orders in /OrdersByType//order, 
   $order in $orders/itemGroup,
   $item in $order/name
               return 
                  <record> 
                  <orderType>{$orders/type/text()}</orderType>
                  <itemCategory>{$order/category/text()}</itemCategory>
                  <itemName>{$item/text()}</itemName>
                  <itemPrice>#itemPrice#</itemPrice>
                  <comment>none</comment>
                  </record>
}
</OrdersByRecord>
