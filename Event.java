package model;

import java.io.Serializable;

public class Event implements Serializable{
	private String title;
	private String start;
	private String end;

	public Event() {}
	public Event(String title, String start, String end) {
		this.title = title;
		this.start = start;
		this.end = end;
	}

	public String getTitle() {
		return this.title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getStart() {
		return this.start;
	}
	public void setStart(String start) {
		this.start = start;
	}
	public String getEnd() {
		return this.end;
	}
	public void setEnd(String end) {
		this.end = end;
	}
}
