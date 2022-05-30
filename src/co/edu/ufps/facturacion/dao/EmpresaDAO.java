package co.edu.ufps.facturacion.dao;

import javax.transaction.Transactional;

import co.edu.ufps.facturacion.connection.Conexion;
import co.edu.ufps.facturacion.entities.*;

public class EmpresaDAO extends Conexion<Empresa> implements GenericDAO<Empresa>{

	public EmpresaDAO() {
		super(Empresa.class);
	}
}
