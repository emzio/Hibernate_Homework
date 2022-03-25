package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.entity.Article;
import pl.coderslab.entity.Author;
import pl.coderslab.entity.Category;
import pl.coderslab.service.ArticleService;
import pl.coderslab.service.AuthorService;
import pl.coderslab.service.CategoryService;

import java.util.List;
import java.util.stream.Collectors;

@Controller
public class ArticleController {
    private ArticleService articleService;
    private AuthorService authorService;
    private CategoryService categoryService;

    public ArticleController(ArticleService articleService, AuthorService authorService, CategoryService categoryService) {
        this.articleService = articleService;
        this.authorService = authorService;
        this.categoryService = categoryService;
    }

    @GetMapping("/articles")
    private String findAll(Model model){
        model.addAttribute("articles", articleService.findAll());
        return "/article/list";
    }

    @GetMapping("/article/add")
    private String showAddForm(Model model){
        Article article = new Article();
        model.addAttribute("article", article);
        return "article/add";
    }

    @PostMapping("/article/add")
    private String processAddForm(Article article){
        articleService.save(article);
        return "redirect:/articles";
    }

    @GetMapping("/article/delete/{id}")
    private String delete(@PathVariable Long id){
        articleService.delete(id);
        return "redirect:/articles";
    }

    @GetMapping("article/update/{id}")
    private String showUpdateForm(Model model, @PathVariable Long id){
        model.addAttribute("article", articleService.findById(id));
        return "article/update";
    }

    @PostMapping("article/update/{id}")
    private String processUpdateForm(Article article){
        articleService.update(article);
        return "redirect:/articles";
    }

//    @GetMapping(value = "/articles", params = "authorId")
    @GetMapping("/articlesByAuthor")
    @ResponseBody
    public String findByAuthor(@RequestParam(name = "authorId") Long authorId){
        return articleService.findAllByAuthor(authorService.findById(authorId)).stream()
                .map(article -> article.toString())
                .collect(Collectors.joining(" | "));
    }

    @GetMapping("/articleByCategory/{categoryId}")
    @ResponseBody
    private String findAllByCategory(@PathVariable Long categoryId){
        return articleService.findAllByCategory(categoryService.findById(categoryId)).stream()
                .map(category -> category.toString())
                .collect(Collectors.joining("<br>"));
    }

    @ModelAttribute("authors")
    private List<Author> findAllAuthors(){
        return authorService.findAll();
    }

    @ModelAttribute("categories")
    private List<Category> findAllCategories(){
        return categoryService.findAll();
    }
}
