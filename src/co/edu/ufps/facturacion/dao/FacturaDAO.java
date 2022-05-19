package co.edu.ufps.facturacion.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;

import co.edu.ufps.facturacion.connection.Conexion;
import co.edu.ufps.facturacion.entities.*;

public class FacturaDAO extends Conexion<Factura> implements GenericDAO<Factura>{

	public FacturaDAO() {
		super(Factura.class);
	}
	
	public List<Factura> listarPorEmpresa(int nit){
		Query consulta= getEm().createNamedQuery(Factura.class.getSimpleName()+".findByEmpresa", Factura.class).setParameter("nit", nit);
		List<Factura> lista = (ArrayList<Factura>) consulta.getResultList();
		return lista;
	}
}
