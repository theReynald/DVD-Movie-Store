package com.test.dto;

public class RatingDTO {
	private Integer stars;
	private Integer id;

	public RatingDTO(Integer id, Integer stars) {
		this.id = id;
		this.stars = stars;
	}

	public Integer getStars() {
		return stars;
	}

	public void setStars(Integer stars) {
		this.stars = stars;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

}
