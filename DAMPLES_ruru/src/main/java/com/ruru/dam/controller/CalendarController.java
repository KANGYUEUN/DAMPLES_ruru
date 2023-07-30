package com.ruru.dam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.ruru.dam.service.Day;
import com.ruru.dam.service.EventService;

@Controller
public class CalendarController {

    @Autowired
    private EventService eventService;

    @GetMapping("/calendar")
    public String showCalendar(Model model) {
        List<Day> calendar = eventService.getCalendarData(); // 이 부분은 캘린더 데이터를 가져오는 서비스 메서드입니다.
        model.addAttribute("calendar", calendar);
        return "calendar";
    }
}
