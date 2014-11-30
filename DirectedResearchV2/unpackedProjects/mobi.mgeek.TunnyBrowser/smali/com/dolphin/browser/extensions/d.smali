.class public Lcom/dolphin/browser/extensions/d;
.super Ljava/lang/ClassLoader;
.source "AddonClassLoader.java"


# static fields
.field private static a:Ljava/lang/reflect/Field;


# instance fields
.field private final b:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    :try_start_0
    const-class v0, Ljava/lang/ClassLoader;

    const-string v1, "parent"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/extensions/d;->a:Ljava/lang/reflect/Field;

    .line 12
    sget-object v0, Lcom/dolphin/browser/extensions/d;->a:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    :goto_0
    return-void

    .line 13
    :catch_0
    move-exception v0

    .line 14
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 15
    :catch_1
    move-exception v0

    .line 16
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/dolphin/browser/extensions/d;->b:Ljava/lang/ClassLoader;

    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/extensions/d;->b:Ljava/lang/ClassLoader;

    if-eq v0, p2, :cond_0

    .line 37
    invoke-static {p1, p2}, Lcom/dolphin/browser/extensions/d;->a(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)V

    .line 39
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)V
    .locals 1

    .prologue
    .line 23
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/extensions/d;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 29
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 26
    :catch_1
    move-exception v0

    .line 27
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/extensions/d;->b:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
