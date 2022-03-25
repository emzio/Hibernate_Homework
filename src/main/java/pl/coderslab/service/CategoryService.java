package pl.coderslab.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.dao.CategoryDao;
import pl.coderslab.entity.Category;

import java.util.List;

@Service
@Transactional
public class CategoryService {
    private CategoryDao categoryDao;

    public CategoryService(CategoryDao categoryDao) {
        this.categoryDao = categoryDao;
    }

    public void save(Category category){
        categoryDao.save(category);
    }

    public void delete(Long id){
        categoryDao.delete(categoryDao.findById(id));
    }

    public void update(Category category){
        categoryDao.update(category);
    }

    public Category findById(Long id){
        return categoryDao.findById(id);
    }

    public List<Category> findAll(){
        return categoryDao.findAll();
    }
}
