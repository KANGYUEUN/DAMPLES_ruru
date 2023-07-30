package com.ruru.dam.service;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ruru.dam.models.Event;

@Repository
public interface EventRepository extends JpaRepository<Event, Long> {
    // 추가적인 쿼리 메서드 필요시 선언 가능
}
