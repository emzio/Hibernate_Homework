package pl.coderslab.dao;

import org.springframework.stereotype.Repository;
import pl.coderslab.entity.Article;
import pl.coderslab.entity.Author;
import pl.coderslab.entity.Category;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

@Repository
public class ArticleDao {
    @PersistenceContext
    private EntityManager entityManager;

    public void save(Article article){
        entityManager.persist(article);
    }

    public void delete(Article article){
        entityManager.remove(entityManager.contains(article) ? article : entityManager.merge(article));
    }

    public void update(Article article){
        entityManager.merge(article);
    }

    public Article findById(Long id){
        return entityManager.find(Article.class, id);
    }

    public List<Article> findAll(){
        return entityManager.createQuery("SELECT a FROM Article a").getResultList();
    }

    public List<Article> findAllByCategory(Category category){

//        "WHERE :author member of b.authors"

        Query query = entityManager.createQuery("SELECT a FROM Article a WHERE :category member of a.categories");
        query.setParameter("category", category);
        return query.getResultList();
    }

    public List<Article> findAllByAuthor(Author author){
        Query query = entityManager.createQuery("SELECT i FROM Article i WHERE i.author=:author");
        query.setParameter("author", author);
        return query.getResultList();
    }

    public List<Article> findFiveLastAdded(){
        Query query = entityManager.createQuery("SELECT a FROM Article a ORDER BY a.created ");
        return query.setMaxResults(5).getResultList();
    }

//    public List<Object> findFiveLastTitleAdded(){
//        Query query = entityManager.createQuery("SELECT a.title, a.created, a.created FROM Article a ORDER BY a.created ");
//        return query.setMaxResults(5).getResultList();
//    }
}
