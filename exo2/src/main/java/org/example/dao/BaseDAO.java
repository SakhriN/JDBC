package org.example.dao;

import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

public interface BaseDAO<T> {

    T get(int id) throws SQLException;

    List<T> getAll() throws SQLException;

    int save (T t) throws SQLException;
    int update (T t) throws SQLException;
    int delete (T t);
}
