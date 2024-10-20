package com.lwz.controller;

import com.lwz.pojo.Anime;
import com.lwz.pojo.Type;
import com.lwz.service.AnimeService;
import com.lwz.service.TagService;
import com.lwz.service.TypeService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class IndexController {

    @Autowired
    private AnimeService blogService;

    @Autowired
    private TypeService typeService;

    @Autowired
    private TagService tagService;

    @GetMapping("/")
    public String toIndex(@RequestParam(required = false,defaultValue = "1",value = "pagenum")int pagenum, Model model){

        PageHelper.startPage(pagenum, 20);
        List<Anime> allBlog = blogService.getIndexBlog();
        List<Type> allType = typeService.getBlogType();  //获取番剧的类型(联表查询)
//        List<Tag> allTag = tagService.getBlogTag();  //获取番剧的标签(联表查询)
//        List<Blog> recommendBlog =blogService.getAllRecommendBlog();  //获取推荐番剧

        //得到分页结果对象
        PageInfo pageInfo = new PageInfo(allBlog);
        model.addAttribute("pageInfo", pageInfo);
//        model.addAttribute("tags", allTag);
        model.addAttribute("types", allType);
//        model.addAttribute("recommendBlogs", recommendBlog);
        return "index";
    }

    @GetMapping("/search")
    public String search(@RequestParam(required = false,defaultValue = "1",value = "pagenum")int pagenum,
                         @RequestParam String query, Model model){

        PageHelper.startPage(pagenum, 5);
        List<Anime> searchBlog = blogService.getSearchBlog(query);
        PageInfo pageInfo = new PageInfo(searchBlog);
        model.addAttribute("pageInfo", pageInfo);
        model.addAttribute("query", query);
        return "search";
    }

    @GetMapping("/blog/{id}")
    public String toLogin(@PathVariable Long id, Model model){
        Anime blog = blogService.getDetailedBlog(id);
        model.addAttribute("blog", blog);
        return "blog";
    }
}
