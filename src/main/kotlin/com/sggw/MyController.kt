package com.sggw

import io.micronaut.http.annotation.Controller
import io.micronaut.http.annotation.Get
import io.reactivex.Single

@Controller("/my")
class MyController {

    data class Result(val test: String)

    @Get("/test")
    fun test(): Single<List<Result>> = Single.just(listOf(Result("dupa2"), Result("test213424")));
}