import com.moowork.gradle.node.npm.NpmTask

plugins {
    val kotlinVersion = "1.4.21"
    id("org.jetbrains.kotlin.jvm") version kotlinVersion
    id("org.jetbrains.kotlin.kapt") version kotlinVersion
    id("org.jetbrains.kotlin.plugin.allopen") version kotlinVersion
    id("com.github.johnrengelman.shadow") version "6.1.0"
    id("io.micronaut.application") version "1.2.0"
    id("com.github.node-gradle.node") version "2.2.4"
}

version = "0.1"
group = "com.sggw"

val kotlinVersion: String by project
val jvmVersion: String by project
val postgresVersion: String by project
val fullMainClass = "com.sggw.ApplicationKt"

repositories {
    mavenCentral()
    jcenter()
}

micronaut {
    runtime("netty")
    testRuntime("junit5")
    processing {
        incremental(true)
        annotations("com.sggw.*")
    }
}

dependencies {
    kapt("io.micronaut.openapi:micronaut-openapi")
    implementation("io.micronaut:micronaut-validation")
    implementation("org.jetbrains.kotlin:kotlin-stdlib-jdk8:${kotlinVersion}")
    implementation("org.jetbrains.kotlin:kotlin-reflect:${kotlinVersion}")
    implementation("io.micronaut.kotlin:micronaut-kotlin-runtime")
    implementation("io.micronaut:micronaut-runtime")
    implementation("javax.annotation:javax.annotation-api")
    implementation("io.micronaut:micronaut-http-client")
    implementation("io.swagger.core.v3:swagger-annotations")
    implementation("io.micronaut.flyway:micronaut-flyway")
    implementation("io.micronaut.sql:micronaut-jdbc-hikari")
    implementation("io.micronaut.beanvalidation:micronaut-hibernate-validator")
    implementation("io.micronaut.kotlin:micronaut-kotlin-extension-functions")
    runtimeOnly("ch.qos.logback:logback-classic")
    runtimeOnly("com.fasterxml.jackson.module:jackson-module-kotlin")
    runtimeOnly("com.h2database:h2")
    runtimeOnly("org.postgresql:postgresql:${postgresVersion}")
}


application {
    mainClass.set(fullMainClass)
}

java {
    sourceCompatibility = JavaVersion.toVersion(jvmVersion)
}

node {
    version = "14.15.3"
    download = true
    workDir = file("${project.projectDir}/build")
}

tasks {
    compileKotlin {
        kotlinOptions {
            jvmTarget = jvmVersion
        }
    }
    compileTestKotlin {
        kotlinOptions {
            jvmTarget = jvmVersion
        }
    }

    val appNpmInstall by creating(NpmTask::class) {
        description = "Installs all dependencies from package.json"
        setWorkingDir(file("${project.projectDir}/frontend"))
        setArgs(listOf("install"))
    }

    val appNpmBuild by creating(NpmTask::class) {
        dependsOn(appNpmInstall)
        description = "Builds project"
        setWorkingDir(file("${project.projectDir}/frontend"))
        setArgs(listOf("run", "build"))
    }

    val copyToWebRoot by creating(Copy::class) {
        from("${project.projectDir}/frontend/build")
        destinationDir = file("${buildDir}/resources/main/public")
        dependsOn(appNpmBuild)
    }

    val processResources by getting(ProcessResources::class) {
        dependsOn(copyToWebRoot)
    }
}