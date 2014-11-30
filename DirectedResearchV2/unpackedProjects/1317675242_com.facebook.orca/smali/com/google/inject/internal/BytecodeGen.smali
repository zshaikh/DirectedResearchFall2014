.class public final Lcom/google/inject/internal/BytecodeGen;
.super Ljava/lang/Object;
.source "BytecodeGen.java"


# static fields
.field private static final CLASS_LOADER_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field static final GUICE_CLASS_LOADER:Ljava/lang/ClassLoader;

.field private static final GUICE_INTERNAL_PACKAGE:Ljava/lang/String;

.field static final HOOK_ENABLED:Z

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const-class v0, Lcom/google/inject/internal/BytecodeGen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/BytecodeGen;->logger:Ljava/util/logging/Logger;

    .line 62
    const-class v0, Lcom/google/inject/internal/BytecodeGen;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/BytecodeGen;->GUICE_CLASS_LOADER:Ljava/lang/ClassLoader;

    .line 65
    const-class v0, Lcom/google/inject/internal/BytecodeGen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\.internal\\..*$"

    const-string v2, ".internal"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/BytecodeGen;->GUICE_INTERNAL_PACKAGE:Ljava/lang/String;

    .line 85
    const-string v0, "true"

    const-string v1, "guice.custom.loader"

    const-string v2, "true"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/google/inject/internal/BytecodeGen;->HOOK_ENABLED:Z

    .line 92
    new-instance v0, Lcom/google/inject/internal/MapMaker;

    invoke-direct {v0}, Lcom/google/inject/internal/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/inject/internal/MapMaker;->weakKeys()Lcom/google/inject/internal/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/MapMaker;->weakValues()Lcom/google/inject/internal/MapMaker;

    move-result-object v0

    new-instance v1, Lcom/google/inject/internal/BytecodeGen$1;

    invoke-direct {v1}, Lcom/google/inject/internal/BytecodeGen$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/MapMaker;->makeComputingMap(Lcom/google/inject/internal/Function;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/BytecodeGen;->CLASS_LOADER_CACHE:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/google/inject/internal/BytecodeGen;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/google/inject/internal/BytecodeGen;->GUICE_INTERNAL_PACKAGE:Ljava/lang/String;

    return-object v0
.end method

.method private static canonicalize(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .line 111
    if-eqz p0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/inject/internal/BytecodeGen;->getSystemClassLoaderOrNull()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "Couldn\'t get a ClassLoader"

    invoke-static {v0, v1}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassLoader;

    move-object v0, p0

    goto :goto_0
.end method

.method public static getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/inject/internal/BytecodeGen;->getClassLoader(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private static getClassLoader(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {p1}, Lcom/google/inject/internal/BytecodeGen;->canonicalize(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 139
    invoke-static {}, Lcom/google/inject/internal/BytecodeGen;->getSystemClassLoaderOrNull()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-object v0

    .line 144
    :cond_1
    instance-of v1, v0, Lcom/google/inject/internal/BytecodeGen$BridgeClassLoader;

    if-nez v1, :cond_0

    .line 148
    sget-boolean v1, Lcom/google/inject/internal/BytecodeGen;->HOOK_ENABLED:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/inject/internal/BytecodeGen$Visibility;->forType(Ljava/lang/Class;)Lcom/google/inject/internal/BytecodeGen$Visibility;

    move-result-object v1

    sget-object v2, Lcom/google/inject/internal/BytecodeGen$Visibility;->PUBLIC:Lcom/google/inject/internal/BytecodeGen$Visibility;

    if-ne v1, v2, :cond_0

    .line 149
    sget-object v1, Lcom/google/inject/internal/BytecodeGen;->CLASS_LOADER_CACHE:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassLoader;

    move-object v0, p0

    goto :goto_0
.end method

.method private static getSystemClassLoaderOrNull()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 122
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    const/4 v0, 0x0

    goto :goto_0
.end method
