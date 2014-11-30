.class public Lcom/jesusla/ane/Extension;
.super Ljava/lang/Object;
.source "Extension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field private static debug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jesusla/ane/Extension;->debug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 61
    sget-boolean v0, Lcom/jesusla/ane/Extension;->debug:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 63
    const-string v0, "ANE"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    return-void
.end method

.method public static varargs fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 40
    const-string v0, "ANE"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 46
    const-string v0, "ANE"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private instantiateContext(Ljava/lang/String;)Lcom/jesusla/ane/Context;
    .locals 4
    .param p1, "contextType"    # Ljava/lang/String;

    .prologue
    .line 31
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 32
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/jesusla/ane/Context;>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/jesusla/ane/Extension;
    check-cast p0, Lcom/jesusla/ane/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    .line 34
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/jesusla/ane/Context;>;"
    :goto_0
    return-object v2

    .line 33
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 34
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Initialization"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jesusla/ane/Context;

    move-object v2, p0

    goto :goto_0
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/jesusla/ane/Extension;->debug:Z

    return v0
.end method

.method static setDebug(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .prologue
    .line 72
    sput-boolean p0, Lcom/jesusla/ane/Extension;->debug:Z

    .line 73
    return-void
.end method

.method public static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 51
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 52
    const-string v0, "ANE"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method public static varargs warn(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 56
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 57
    const-string v0, "ANE"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 2
    .param p1, "contextType"    # Ljava/lang/String;

    .prologue
    .line 14
    :try_start_0
    invoke-direct {p0, p1}, Lcom/jesusla/ane/Extension;->instantiateContext(Ljava/lang/String;)Lcom/jesusla/ane/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 16
    .end local p0    # "this":Lcom/jesusla/ane/Extension;
    :goto_0
    return-object v1

    .line 15
    .restart local p0    # "this":Lcom/jesusla/ane/Extension;
    :catch_0
    move-exception v0

    .line 16
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/jesusla/ane/ExceptionManager;->getInstance()Lcom/jesusla/ane/ExceptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jesusla/ane/ExceptionManager;->handleException(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/jesusla/ane/Extension;
    check-cast p0, Lcom/adobe/fre/FREContext;

    move-object v1, p0

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method
