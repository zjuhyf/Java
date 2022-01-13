package com.bjpowernode.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class MyServlet05 extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 取得url-pattern
        String path = req.getServletPath();
        if("/student/save.do".equals(path)){
            save(req,resp);
        }else if("/student/update.do".equals(path)){
            update(req,resp);
        }else if("/student/delete.do".equals(path)){
            delete(req,resp);
        }else if("/student/select.do".equals(path)){
            select(req,resp);
        }
    }

    private void save(HttpServletRequest req, HttpServletResponse resp) {
        System.out.println("save");
    }

    private void select(HttpServletRequest req, HttpServletResponse resp) {
        System.out.println("select");
    }

    private void delete(HttpServletRequest req, HttpServletResponse resp) {
        System.out.println("delete");
    }

    private void update(HttpServletRequest req, HttpServletResponse resp) {
        System.out.println("update");
    }


}
