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

//主页面
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

        PageHelper.startPage(pagenum, 8);
        List<Anime> allBlog = blogService.getIndexBlog();//获取所有番剧列表
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

//    @GetMapping("/video")
//    public String video(@RequestParam(required = false,defaultValue = "1",value = "pagenum")int pagenum, Model model){
//
//        PageHelper.startPage(pagenum, 20);
//        List<Anime> allBlog = blogService.getIndexBlog();//获取所有番剧列表
//        List<Type> allType = typeService.getBlogType();  //获取番剧的类型(联表查询)
//        //得到分页结果对象
//        PageInfo pageInfo = new PageInfo(allBlog);
//        model.addAttribute("pageInfo", pageInfo);
//        model.addAttribute("types", allType);
//        return "video";
//    }

    /**
     * 处理搜索请求的控制器方法
     * 
     * @param pagenum 页码，默认值为1，允许URL中不提供此参数
     * @param query 搜索关键词，用于查询数据库
     * @param model 用于向视图传递数据的对象
     * @return 返回搜索结果页面的逻辑视图名
     */
    @GetMapping("/search")
    public String search(@RequestParam(required = false, defaultValue = "1", value = "pagenum") int pagenum,
                         @RequestParam String query, Model model) {
        
        // 启用分页功能，从第pagenum页开始，每页显示5条记录
        PageHelper.startPage(pagenum, 5);
        
        // 根据搜索关键词查询数据库，获取搜索结果
        List<Anime> searchBlog = blogService.getSearchBlog(query);
        
        // 将搜索结果封装到PageInfo对象中，便于后续处理和传递
        PageInfo pageInfo = new PageInfo(searchBlog);
        
        // 将分页信息和搜索关键词添加到模型中，以便视图使用
        model.addAttribute("pageInfo", pageInfo);
        model.addAttribute("query", query);
        
        // 返回搜索结果页面的逻辑视图名
        return "search";
    }

    /**
     * 根据番剧ID获取番剧详细信息，并返回番剧页面
     * 
     * @param id 番剧的唯一标识符
     * @param model 用于传递番剧信息到视图的模型对象
     * @return 返回番剧页面的名称
     */
    @GetMapping("/blog/{id}")
    public String toLogin(@PathVariable Long id, Model model){
        // 通过番剧ID调用服务层方法获取详细的番剧信息
        Anime blog = blogService.getDetailedBlog(id);
        // 将获取的番剧信息添加到模型中，以便在视图中使用
        model.addAttribute("blog", blog);
        // 返回番剧页面的名称，此处的"blog"对应到相应的视图模板
        return "blog";
    }
    @GetMapping("/login1")
    public String login1(Model model){
        return "admin/login1";
    }
}
