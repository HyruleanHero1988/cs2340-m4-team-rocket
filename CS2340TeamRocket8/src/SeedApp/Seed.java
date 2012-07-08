package SeedApp;

import java.util.Date;
/**
 * @author Team Rocket
 * @version 1.0
 */
public class Seed {
	private String commonName;
	private String sName;
	private String zone;
	private String tips;
	private String harvestingInfo;
	private String season;
	private String count;
	
	/**
	 * represents a seed
	 * @param cn common name
	 * @param sn scientific name
	 * @param zone farming zone
	 * @param tips growing tips
	 * @param hi harvesting info
	 * @param season harvesting season
	 * @param count number of seeds
	 */
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
	
	/**
	 * 
	 * @param sn scienfic name
	 * @param count number of seeds
	 */
	public Seed(String sn, String count)
	{
		this.sName = sn;
		this.count = count;
	}
	
	/**
	 * 
	 * @param sn scientific name
	 * @param zn growing zone
	 * @param ct seed count
	 */
	public Seed(String sn, String zn, String ct)
	{
		this.sName = sn;
		this.zone = zn;
		this.count = ct;
	}
	
	/**
	 * 
	 * @param sn scientific name
	 * @param zn growing zone
	 * @param b
	 */
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
	
	public String toString(){
		return "Seed" + ", " + commonName + ", " + sName + ", " + zone + ", " + tips + ", " + harvestingInfo + ", " + season + ", " + count;
	}
}
