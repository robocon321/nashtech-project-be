package com.robocon321.demo.dto;

import com.robocon321.demo.type.FilterOperateType;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class FilterCriteria {
	  private String field;
	  private FilterOperateType operator;
	  private Object value;
}
