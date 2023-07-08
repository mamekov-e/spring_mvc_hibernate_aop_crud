package com.example.spring_mvc_hibernate_aop_crud.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class LoggingAspect {

    @Around("execution(* com.example.spring_mvc_hibernate_aop_crud.dao.*.*(..))")
    public Object aroundAllEmployeeMethodLoggingAdvice(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {
        MethodSignature methodSignature = (MethodSignature) proceedingJoinPoint.getSignature();
        String methodName = methodSignature.getName();
        System.out.println("Begin of method " + methodName);
        Object obj = proceedingJoinPoint.proceed();
        System.out.println("End of method " + methodName);

        return obj;
    }
}
