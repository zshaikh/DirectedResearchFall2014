.class public Lcom/dolphin/browser/a/g;
.super Lcom/dolphin/browser/a/f;
.source "SearchAction.java"


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/dolphin/browser/a/d;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/dolphin/browser/a/d;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/a/f;-><init>(Ljava/lang/Class;Lcom/dolphin/browser/a/d;[Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method public static final b(Lorg/json/JSONObject;Ljava/lang/Class;Lcom/dolphin/browser/a/d;)Lcom/dolphin/browser/a/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/dolphin/browser/a/d;",
            ")",
            "Lcom/dolphin/browser/a/g;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lcom/dolphin/browser/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/dolphin/browser/a/g;-><init>(Ljava/lang/Class;Lcom/dolphin/browser/a/d;[Ljava/lang/Object;)V

    .line 28
    invoke-virtual {v0, p0}, Lcom/dolphin/browser/a/g;->a(Lorg/json/JSONObject;)V

    .line 29
    return-object v0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 35
    const-string v1, "args"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 39
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 40
    iput-object v0, p0, Lcom/dolphin/browser/a/g;->e:[Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public a(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 45
    iget-object v2, p0, Lcom/dolphin/browser/a/g;->d:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 47
    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p1, p2, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 48
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 49
    iput-object v2, p0, Lcom/dolphin/browser/a/g;->d:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v0, v1

    .line 55
    :goto_0
    return v0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 60
    iget-object v2, p0, Lcom/dolphin/browser/a/g;->a:Ljava/lang/Class;

    iget-object v3, p0, Lcom/dolphin/browser/a/g;->b:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/dolphin/browser/a/g;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    :goto_0
    return v0

    .line 64
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/dolphin/browser/a/g;->d:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/dolphin/browser/a/g;->e:[Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/dolphin/browser/a/g;->e:[Ljava/lang/Object;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
