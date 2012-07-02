package SeedApp;

import java.util.Date;

public class Seed {
	private String commonName;
	private String sName;
	private String zone;
	private String tips;
	private String harvestingInfo;
	private String season;
	private String count;

	public Seed(String cn, String sn, String zone, String tips, String hi, String season, String count)
	{
		this.commonName = cn;
		this.sName = sn;
		this.zone = zone;
		this.tips = tips;
		this.harvestingInfo = hi;
		this.season = season;
		this.count = count;
	}
	
	public Seed(String sn, String count)
	{
		this.sName = sn;
		this.count = count;
	}
	
	public Seed(String sn, String zn, Boolean b)
	{
		this.sName = sn;
		this.zone = zn;
	}
	
	public String getName()
	{
		return sName;
	}
	
	public String getComName()
	{
		return commonName;
	}
	
	public String getZone()
	{
		return zone;
	}
	
	public String getQt()
	{
		return count;
	}
}
