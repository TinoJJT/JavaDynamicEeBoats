package model;

public class Vene {
	private int vene_id, hinta;
	private boolean poistettu;
	private String nimi, merkkimalli;
	private double pituus, leveys;
	public Vene() {
		super();		
	}
	
	public Vene(String nimi, String merkkimalli, double pituus, double leveys, int hinta) {
		super();
		this.hinta = hinta;
		this.nimi = nimi;
		this.merkkimalli = merkkimalli;
		this.pituus = pituus;
		this.leveys = leveys;
	}
	
	public Vene(int vene_id, String nimi, String merkkimalli, double pituus, double leveys, int hinta) {
		super();
		this.vene_id = vene_id;
		this.hinta = hinta;
		this.nimi = nimi;
		this.merkkimalli = merkkimalli;
		this.pituus = pituus;
		this.leveys = leveys;
	}

	public Vene(int vene_id, int hinta, boolean poistettu, String nimi, String merkkimalli, double pituus,
			double leveys) {
		super();
		this.vene_id = vene_id;
		this.hinta = hinta;
		this.poistettu = poistettu;
		this.nimi = nimi;
		this.merkkimalli = merkkimalli;
		this.pituus = pituus;
		this.leveys = leveys;
	}

	public int getVene_id() {
		return vene_id;
	}

	public void setVene_id(int vene_id) {
		this.vene_id = vene_id;
	}

	public int getHinta() {
		return hinta;
	}

	public void setHinta(int hinta) {
		this.hinta = hinta;
	}

	public boolean isPoistettu() {
		return poistettu;
	}

	public void setPoistettu(boolean poistettu) {
		this.poistettu = poistettu;
	}

	public String getNimi() {
		return nimi;
	}

	public void setNimi(String nimi) {
		this.nimi = nimi;
	}

	public String getMerkkimalli() {
		return merkkimalli;
	}

	public void setMerkkimalli(String merkkimalli) {
		this.merkkimalli = merkkimalli;
	}

	public double getPituus() {
		return pituus;
	}

	public void setPituus(double pituus) {
		this.pituus = pituus;
	}

	public double getLeveys() {
		return leveys;
	}

	public void setLeveys(double leveys) {
		this.leveys = leveys;
	}

	@Override
	public String toString() {
		return "Vene [vene_id=" + vene_id + ", hinta=" + hinta + ", poistettu=" + poistettu + ", nimi=" + nimi
				+ ", merkkimalli=" + merkkimalli + ", pituus=" + pituus + ", leveys=" + leveys + "]";
	}
}
