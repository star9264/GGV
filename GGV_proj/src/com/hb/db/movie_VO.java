package com.hb.db;

public class movie_VO {
   private String movie_idx,title,rate,story,genre,director,cast,running_time,poster,start_time,review_cnt;
   
	public movie_VO() {}
	public movie_VO(String movie_idx, String title, String rate, String story, String genre, String director,
			String cast, String running_time, String poster, String start_time, String review_cnt) {
		super();
		this.movie_idx = movie_idx;
		this.title = title;
		this.rate = rate;
		this.story = story;
		this.genre = genre;
		this.director = director;
		this.cast = cast;
		this.running_time = running_time;
		this.poster = poster;
		this.start_time = start_time;
		this.review_cnt = review_cnt;
	}
	public String getMovie_idx() {
		return movie_idx;
	}
	public void setMovie_idx(String movie_idx) {
		this.movie_idx = movie_idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getRate() {
		return rate;
	}
	public void setRate(String rate) {
		this.rate = rate;
	}
	public String getStory() {
		return story;
	}
	public void setStory(String story) {
		this.story = story;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getCast() {
		return cast;
	}
	public void setCast(String cast) {
		this.cast = cast;
	}
	public String getRunning_time() {
		return running_time;
	}
	public void setRunning_time(String running_time) {
		this.running_time = running_time;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public String getReview_cnt() {
		return review_cnt;
	}
	public void setReview_cnt(String review_cnt) {
		this.review_cnt = review_cnt;
	}
	
}
