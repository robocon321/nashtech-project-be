package com.robocon321.demo.specs;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.management.RuntimeErrorException;
import javax.persistence.criteria.Join;

import org.springframework.data.jpa.domain.Specification;

import com.robocon321.demo.dto.FilterCriteria;
import com.robocon321.demo.entity.Category;
import com.robocon321.demo.exception.BadRequestException;
import com.robocon321.demo.exception.NotImplementedException;

public class CategorySpecification {
	public static Specification<Category> filter(FilterCriteria criteria) throws RuntimeException {
		return (root, query, builder) -> {
			if(criteria == null) {
				return null;
			}
			
			String[] splitField = criteria.getField().split("\\.");
			
			if(splitField.length >= 2) {
				// will join table when splitField length >= 2
				
				String field = splitField[splitField.length - 1];
				Join join = null;
				for(int i = 0; i < splitField.length - 1; i ++) {
					join = root.join(splitField[i]);
				}
				
				switch(criteria.getOperator()) {
				
				case GREATER:
					if(criteria.getField().equals("create_time") || criteria.getField().equals("mod_time")) {
						DateFormat df =  new SimpleDateFormat("yyyy/MM/dd");
						try {
							Date d = df.parse(criteria.getValue().toString());
							return builder.greaterThanOrEqualTo(root.<Date>get(criteria.getField()), d);
						} catch (ParseException e) {
							e.printStackTrace();
						}
					} else {
						return builder.greaterThanOrEqualTo(root.<String>get(criteria.getField()), criteria.getValue().toString());
					}
					break;
				case LESS:
					if(criteria.getField().equals("create_time") || criteria.getField().equals("mod_time")) {
						DateFormat df =  new SimpleDateFormat("yyyy/MM/dd");
						try {
							Date d = df.parse(criteria.getValue().toString());
							return builder.lessThanOrEqualTo(root.<Date>get(criteria.getField()), d);
						} catch (ParseException e) {
							e.printStackTrace();
						}
					} else {
						return builder.lessThanOrEqualTo(root.<String>get(criteria.getField()), criteria.getValue().toString());
					}
					break;
				case LIKE:
					return builder.like(join.get(field), "%" + criteria.getValue() + "%");
				case EQUALS:
					return builder.equal(join.get(field), criteria.getValue());
				case NOT_EQUALS:
					return builder.notEqual(join.get(field), criteria.getValue());
				case START_WITH:
					return builder.like(join.get(field), "%" + criteria.getValue());
				case END_WITH:
					return builder.like(join.get(field), criteria.getValue() + "%");
				case IN:
					String[] values = criteria.getValue().toString().split(",");
					return join.get(field).in(values);
				default:
					throw new NotImplementedException("Operation not supported yet");
			}
				
			} else {
				switch (criteria.getOperator()) {
				case GREATER:
					if (criteria.getField().equals("create_time") || criteria.getField().equals("mod_time")) {
						DateFormat df = new SimpleDateFormat("yyyy/MM/dd");
						try {
							Date d = df.parse(criteria.getValue().toString());
							return builder.greaterThanOrEqualTo(root.<Date>get(criteria.getField()), d);
						} catch (ParseException e) {
							e.printStackTrace();
						}
					} else {
						return builder.greaterThanOrEqualTo(root.<String>get(criteria.getField()),
								criteria.getValue().toString());
					}
					break;
				case LESS:
					if (criteria.getField().equals("create_time") || criteria.getField().equals("mod_time")) {
						DateFormat df = new SimpleDateFormat("yyyy/MM/dd");
						try {
							Date d = df.parse(criteria.getValue().toString());
							return builder.lessThanOrEqualTo(root.<Date>get(criteria.getField()), d);
						} catch (ParseException e) {
							e.printStackTrace();
						}
					} else {
						return builder.lessThanOrEqualTo(root.<String>get(criteria.getField()),
								criteria.getValue().toString());
					}
					break;
				case LIKE:
					return builder.like(root.<String>get(criteria.getField()), "%" + criteria.getValue() + "%");
				case EQUALS:
					return builder.equal(root.get(criteria.getField()), criteria.getValue());
				case NOT_EQUALS:
					return builder.notEqual(root.get(criteria.getField()), criteria.getValue());
				case START_WITH:
					return builder.like(root.<String>get(criteria.getField()), criteria.getValue() + "%");
				case END_WITH:
					return builder.like(root.<String>get(criteria.getField()), "%" + criteria.getValue());
				case IN:
					String[] values = criteria.getValue().toString().split(",");
					return root.<String>get(criteria.getField()).in(values);
				default:
					throw new NotImplementedException("Operation not supported yet");
				}
			}
			return null;
		};
	}
}
