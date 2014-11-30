.class public Lcom/jesusla/ane/Function;
.super Ljava/lang/Object;
.source "Function.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# instance fields
.field private final argumentTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final method:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;[Ljava/lang/Class;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p2, "argumentTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/jesusla/ane/Function;->method:Ljava/lang/reflect/Method;

    .line 17
    iput-object p2, p0, Lcom/jesusla/ane/Function;->argumentTypes:[Ljava/lang/Class;

    .line 18
    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2
    .param p1, "ctx"    # Lcom/adobe/fre/FREContext;
    .param p2, "flashArgs"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 23
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/jesusla/ane/Function;->internalCall(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 25
    .end local p0    # "this":Lcom/jesusla/ane/Function;
    :goto_0
    return-object v1

    .line 24
    .restart local p0    # "this":Lcom/jesusla/ane/Function;
    :catch_0
    move-exception v0

    .line 25
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/jesusla/ane/ExceptionManager;->getInstance()Lcom/jesusla/ane/ExceptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jesusla/ane/ExceptionManager;->handleException(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/jesusla/ane/Function;
    check-cast p0, Lcom/adobe/fre/FREObject;

    move-object v1, p0

    goto :goto_0
.end method

.method public internalCall(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 12
    .param p1, "ctx"    # Lcom/adobe/fre/FREContext;
    .param p2, "flashArgs"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 30
    move-object v0, p1

    check-cast v0, Lcom/jesusla/ane/Context;

    move-object v1, v0

    .line 31
    .local v1, "context":Lcom/jesusla/ane/Context;
    array-length v6, p2

    .line 32
    .local v6, "len":I
    new-array v4, v6, [Ljava/lang/Object;

    .line 34
    .local v4, "javaArgs":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 35
    :try_start_0
    iget-object v8, p0, Lcom/jesusla/ane/Function;->argumentTypes:[Ljava/lang/Class;

    array-length v8, v8

    if-ge v3, v8, :cond_0

    iget-object v8, p0, Lcom/jesusla/ane/Function;->argumentTypes:[Ljava/lang/Class;

    aget-object v8, v8, v3

    move-object v7, v8

    .line 36
    .local v7, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    aget-object v8, p2, v3

    invoke-virtual {v1, v8, v7}, Lcom/jesusla/ane/Context;->fromFlash(Lcom/adobe/fre/FREObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 35
    .end local v7    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v8, 0x0

    move-object v7, v8

    goto :goto_1

    .line 38
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 39
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "While marshalling %s.%s(%s)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/jesusla/ane/Function;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, ", "

    invoke-static {v11, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v2, v8, v9}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/jesusla/ane/Function;
    check-cast p0, Lcom/adobe/fre/FREObject;

    move-object v8, p0

    .line 46
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v8

    .line 42
    .restart local p0    # "this":Lcom/jesusla/ane/Function;
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/jesusla/ane/Function;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v8, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 43
    .local v5, "javaResult":Ljava/lang/Object;
    const-string v8, "F->J %s.%s(%s) returned %s"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/jesusla/ane/Function;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, ", "

    invoke-static {v11, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v1, v5}, Lcom/jesusla/ane/Context;->toFlash(Ljava/lang/Object;)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    goto :goto_2

    .line 45
    .end local v5    # "javaResult":Ljava/lang/Object;
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 46
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v8, "While invoking %s.%s(%s)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/jesusla/ane/Function;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, ", "

    invoke-static {v11, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v2, v8, v9}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/jesusla/ane/Function;
    check-cast p0, Lcom/adobe/fre/FREObject;

    move-object v8, p0

    goto :goto_2
.end method
