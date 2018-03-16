package CloudComputing.Model;

import java.sql.*;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "news")
public class News {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String headding;
	private String content;
	private Date date;
	private String image;
	private String link;
	private int contenttypeid;

	public News(int id, String headding, String content, Date date, String image, String link, int contenttypeid) {
		super();
		this.id = id;
		this.headding = headding;
		this.content = content;
		this.date = date;
		this.image = image;
		this.link = link;
		this.contenttypeid = contenttypeid;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getHeadding() {
		return headding;
	}

	public void setHeadding(String headding) {
		this.headding = headding;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public int getContenttypeid() {
		return contenttypeid;
	}

	public void setContenttypeid(int contenttypeid) {
		this.contenttypeid = contenttypeid;
	}

}
