package com.robocon321.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.robocon321.demo.entity.Setting;

public interface SettingRepository extends JpaRepository<Setting, Integer>{

}
