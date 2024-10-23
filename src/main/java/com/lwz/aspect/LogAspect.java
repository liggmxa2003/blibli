package com.lwz.aspect;

import lombok.AllArgsConstructor;
import lombok.Data;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;

//用于处理操作日志
@Aspect
@Component
public class LogAspect {

    // 创建一个Logger对象，用于记录日志信息
    // 使用LoggerFactory的getLogger方法，传入当前类的Class对象，以获取与当前类关联的Logger实例
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    /**
     * 定义一个切点方法，用于匹配特定的执行表达式
     * 该切点方法本身没有实现，仅用于声明切点
     *
     * @Pointcut注解用于定义一个切点表达式，匹配com.lwz.controller包下的所有类的所有方法
     * 表达式"execution(* com.lwz.controller.*.*(..))"表示匹配com.lwz.controller包下所有类的所有方法
     * 其中，execution表示匹配方法的执行，*表示任意返回类型，com.lwz.controller.*表示com.lwz.controller包下的任意类，
     * *.*表示类中的任意方法，(..)表示方法可以接受任意参数
     */
    @Pointcut("execution(* com.lwz.controller.*.*(..))")
    public void log(){}

    @Before("log()")    //引用切入点
    public void doBefore(JoinPoint joinPoint){
        // 获取当前请求的Servlet请求属性
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        // 从属性中提取HTTP请求对象
        HttpServletRequest request = attributes.getRequest();

        // 获取请求的URL
        String url = request.getRequestURL().toString();
        // 获取请求者的IP地址
        String ip = request.getRemoteAddr();
        // 获得类名.方法名
        String classMethod = joinPoint.getSignature().getDeclaringTypeName() + "." + joinPoint.getSignature().getName();
        // 获得方法参数
        Object[] args = joinPoint.getArgs();

        // 创建一个请求日志对象，封装请求的相关信息
        RequestLog requestLog = new RequestLog(url, ip, classMethod, args);
        // 打印请求信息
        logger.info("Request: {}", requestLog);
    }

    /**
     * 在日志方法执行后执行的逻辑
     * 该方法主要用于在日志记录操作之后进行一些后续处理或清理工作
     * 它是基于AOP（面向切面编程）的，可以用于分离横切关注点，如日志记录、事务管理等
     */
    @After("log()")
    public void doAfter(){
        // 记录日志方法执行后的信息
        logger.info("------------doAfter------------");
    }

    /**
     * 在方法执行后进行处理的方法
     * 该方法主要用于在方法执行成功返回结果后，执行一些通用的后处理操作
     *
     * @param result 方法执行返回的结果
     */
    @AfterReturning(returning = "result", pointcut = "log()")
    public void doAfterReturn(Object result){

        //打印返回值
        logger.info("Result: {}", result);
    }

    /**
     * 请求日志类，用于封装请求信息
     */
    @Data
    @AllArgsConstructor
    public class RequestLog{
        // 请求的URL
        private String url;
        // 发起请求的IP地址
        private String ip;
        // 被调用的类和方法名称
        private String classMethod;
        // 方法的参数数组
        private Object[] args;
    }
}
