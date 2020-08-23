package com.bksoftwarevn.itstudent.service_impl;

import com.bksoftwarevn.itstudent.dao.ProductDao;
import com.bksoftwarevn.itstudent.dao_impl.ProductDaoImpl;
import com.bksoftwarevn.itstudent.model.Product;
import com.bksoftwarevn.itstudent.service.ProductService;

import javax.imageio.plugins.jpeg.JPEGImageReadParam;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class ProductService_Impl implements ProductService {

    private ProductDao productDao = new ProductDaoImpl();

    @Override
    public Product insert(Product product) throws SQLException {
        //trc khi thêm phải ktra category tồn tại hay không

        return null;
    }

    @Override
    public boolean update(Product product) throws SQLException {
        //trc khi sửa phải ktra category tồn tại hay không
        return false;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        return false;
    }

    @Override
    public List<Product> findAll() throws SQLException {
        return productDao.findAll();
    }

    @Override
    public Product findById(int id) throws SQLException {
        return null;
    }

    @Override
    public List<Product> search(String name, String startDate, String endDate, Boolean soldOut, int guarantee, int category, int bouth, int promotion) throws SQLException {
        return null;
    }

    @Override
    public List<Product> sortBy(String field, boolean isAsc) throws SQLException {
        return null;
    }

    @Override
    public List<Product> findByCategory(int idCategory) throws SQLException {
       // String sql = "select p.* from product as p, category as c "+
        //        "where c.deleted = false and c.id = ? and p.category_id = c.id";
       // PreparedStatement preparedStatement = myConnection.prepare(sql);
      //  preparedStatement.setInt(1, categoryId);
       // ResultSet resultSet =preparedStatement.executeQuery();
       // return getList(ResultSet);
       return null;
    }
}
