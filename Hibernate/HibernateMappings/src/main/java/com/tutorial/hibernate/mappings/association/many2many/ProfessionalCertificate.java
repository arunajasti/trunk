package com.tutorial.hibernate.mappings.association.many2many;
/**
 * This class should also implement both the equals() and hashCode() methods 
 * so that Java can determine whether any two elements/objects are identical.
 * @author Jayram
 *
 */
public class ProfessionalCertificate {

	private int id; 
	private String name;

	public ProfessionalCertificate() {} 
	public ProfessionalCertificate(String name) { 
		this.name = name; 
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public boolean equals(Object obj) { 
		if (obj == null) return false; 
		if (!this.getClass().equals(obj.getClass())) 
			return false; 
		ProfessionalCertificate obj2 = (ProfessionalCertificate)obj; 
		if((this.id == obj2.getId()) && (this.name.equals(obj2.getName()))) { 
			return true; 
		} 
		return false; 
	} 
	public int hashCode() { 
		int tmp = 0; 
		tmp = ( id + name ).hashCode(); 
		return tmp; 
	}
}
