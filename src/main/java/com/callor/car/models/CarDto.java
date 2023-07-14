package com.callor.car.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class CarDto {
	private long tl_seq;//	BIGINT
	private String tl_type;//	INT
	private String tl_sdate;//	VARCHAR(10)
	private String tl_stime;//	VARCHAR(10)
	private int tl_sdistance;//	INT
	private String tl_edate;//	VARCHAR(10)
	private String tl_etime;//	VARCHAR(10)
	private int tl_edistance;//	INT
	private String tl_place;//	VARCHAR(20)
	private int tl_cost;//	INT
}
