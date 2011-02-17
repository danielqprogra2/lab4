class Order < ActiveRecord::Base

def createOrder(clientNit, productCode)
	elcliente= Client.where(:nit => clientNit).first
	elproducto= Producto.where(:code => productCode).first
	if( (elcliente==nil) or (elproducto==nil))
		if(elcliente==nil)
			puts "no exiten clientes con ese nit"
		end
		if(elproducto==nil)
			puts "no existen productos con esa descripcion"
		end
		return false
	end
	
	orden_actual = new.order
	orden_actual.code= productCode
	orden_actual.date = Time.now
	orden_actual.amount = 1	
end
