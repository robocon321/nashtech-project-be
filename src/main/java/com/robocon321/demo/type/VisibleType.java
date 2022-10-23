package com.robocon321.demo.type;

import java.util.stream.Stream;

public enum VisibleType {
	VISIBLE(1),
	INVISIBLE(0);
	
	private int value;
	
	private VisibleType(int value) {
		this.value = value;
	}
	
    public int getVisible() {
        return value;
    }

    public static VisibleType of(int visible) {
        return Stream.of(VisibleType.values())
          .filter(v -> v.getVisible() == visible)
          .findFirst()
          .orElseThrow(IllegalArgumentException::new);
    }
}
