package pl.coderslab.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.dao.ArticleDao;
import pl.coderslab.entity.Article;
import pl.coderslab.entity.Author;
import pl.coderslab.entity.Category;

import java.util.List;

@Service
@Transactional
public class ArticleService {
    private ArticleDao articleDao;

    public ArticleService(ArticleDao articleDao) {
        this.articleDao = articleDao;
    }

    public void save(Article article){
        articleDao.save(article);
    }

    public void delete(Long id){
        articleDao.delete(articleDao.findById(id));
    }

    public void update(Article article){
        articleDao.update(article);
    }

    public Article findById(Long id){
        return articleDao.findById(id);
    }

    public List<Article> findAll(){
        return articleDao.findAll();
    }

    public List<Article> findAllByCategory(Category category){
        return articleDao.findAllByCategory(category);
    }

    public List<Article> findAllByAuthor(Author author){
        return articleDao.findAllByAuthor(author);
    }

    public List<Article> findFiveLastAdded(){
        return articleDao.findFiveLastAdded();
    }

//    public List<Object> findFiveLastTitleAdded(){
//        return articleDao.findFiveLastTitleAdded();
//    }
}
