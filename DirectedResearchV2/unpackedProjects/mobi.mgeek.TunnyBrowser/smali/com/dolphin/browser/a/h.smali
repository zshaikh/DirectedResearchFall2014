.class public final Lcom/dolphin/browser/a/h;
.super Lcom/dolphin/browser/a/f;
.source "ShareAction.java"


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
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/a/f;-><init>(Ljava/lang/Class;Lcom/dolphin/browser/a/d;[Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public static final b(Lorg/json/JSONObject;Ljava/lang/Class;Lcom/dolphin/browser/a/d;)Lcom/dolphin/browser/a/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/dolphin/browser/a/d;",
            ")",
            "Lcom/dolphin/browser/a/h;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/dolphin/browser/a/h;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/dolphin/browser/a/h;-><init>(Ljava/lang/Class;Lcom/dolphin/browser/a/d;[Ljava/lang/Object;)V

    .line 32
    invoke-virtual {v0, p0}, Lcom/dolphin/browser/a/h;->a(Lorg/json/JSONObject;)V

    .line 33
    return-object v0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 40
    const-string v1, "args"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 42
    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 43
    iput-object v0, p0, Lcom/dolphin/browser/a/h;->e:[Ljava/lang/Object;

    .line 44
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

    .line 48
    iget-object v2, p0, Lcom/dolphin/browser/a/h;->d:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 50
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

    .line 51
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 52
    iput-object v2, p0, Lcom/dolphin/browser/a/h;->d:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v0, v1

    .line 58
    :goto_0
    return v0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 63
    iget-object v2, p0, Lcom/dolphin/browser/a/h;->a:Ljava/lang/Class;

    iget-object v3, p0, Lcom/dolphin/browser/a/h;->b:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/dolphin/browser/a/h;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    :goto_0
    return v0

    .line 67
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/dolphin/browser/a/h;->d:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/dolphin/browser/a/h;->e:[Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/dolphin/browser/a/h;->e:[Ljava/lang/Object;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
