select tb_producto_pedido.id_Pedido as Num,CONVERT(DATE,tb_producto_pedido.fecha_registro) FechaPedido,
tb_Cliente.NOMBRE_COMERCIAL as Nombre, tb_producto_pedido.CLAVE as Clave,tb_producto_pedido.Pieza_caja*tb_producto_pedido.cajas as Piezas,
tb_producto_pedido.estatus_piezas,ct_producto.descripcion
from tb_producto_pedido
inner join tb_Pedido on tb_Pedido.id_Pedido=tb_producto_pedido.id_Pedido
inner join tb_Cliente on tb_Cliente.ID_CLIENTE=tb_Pedido.id_cliente
inner join ct_producto on ct_producto.clave=tb_producto_pedido.clave
order by tb_producto_pedido.clave ASC, tb_producto_pedido.fecha_registro ASC  

drop PROCEDURE reportePedidos

select *from tb_producto_pedido

select *from ct_producto