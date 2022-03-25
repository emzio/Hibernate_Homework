package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import pl.coderslab.entity.Article;
import pl.coderslab.entity.Category;
import pl.coderslab.service.ArticleService;
import pl.coderslab.service.CategoryService;

import java.util.Iterator;
import java.util.List;

@Controller
public class CategoryController {
    private final CategoryService categoryService;
    private final ArticleService articleService;

    public CategoryController(CategoryService categoryService, ArticleService articleService) {
        this.categoryService = categoryService;
        this.articleService = articleService;
    }

    @GetMapping("/categories")
    private String findAll(Model model){
        model.addAttribute("categories", categoryService.findAll());
        return "category/categories";
    }

    @GetMapping("/category/add")
    private String showAddForm(Model model){
        model.addAttribute("category", new Category());
        return "category/add";
    }

    @PostMapping("/category/add")
    private String processAddForm(Category category){
        categoryService.save(category);
        return "redirect:/categories";
    }

    @GetMapping("/category/update/{id}")
    private String showUpdateForm(@PathVariable Long id, Model model){
        model.addAttribute("category", categoryService.findById(id));
        return "category/update";
    }

    @PostMapping("/category/update/{id}")
    private String processUpdateForm(Category category){
        categoryService.update(category);
        return "redirect:/categories";
    }

    @GetMapping("/category/delete/{id}")
    private String delete(@PathVariable Long id){
        Category category = categoryService.findById(id);
        List<Article> articles = articleService.findAllByCategory(category);

        for (Article article : articles) {
            List<Category> categories = article.getCategories();
            Iterator<Category> iterator = categories.iterator();
            while (iterator.hasNext()) {
                if(iterator.next().getId().equals(id)){
                    iterator.remove();
                }
            }
            article.setCategories(categories);
            articleService.update(article);
        }
        categoryService.delete(id);
        return "redirect:/categories";
    }
}
