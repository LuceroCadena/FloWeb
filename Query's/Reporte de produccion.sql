SELECT        tb_Pedido.id_Pedido, tb_producto_pedido.clave, ct_producto.CVE_PRODUCCION, ct_producto.PROCESO
FROM            tb_Pedido INNER JOIN
                         tb_producto_pedido ON tb_Pedido.id_Pedido = tb_producto_pedido.id_Pedido INNER JOIN
                         ct_producto ON tb_producto_pedido.clave = ct_producto.CLAVE