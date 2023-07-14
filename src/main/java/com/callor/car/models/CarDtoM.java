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
public class CarDtoM {
	private String tl_type;//	INT
	private int tl_sdistance;//	INT
	private int tl_edistance;//	INT
	private String tl_place;//	VARCHAR(20)
	private int tl_cost;//	INT
}
