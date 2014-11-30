.class public Lcom/dolphin/browser/a/i;
.super Lcom/dolphin/browser/a/a;
.source "SingleAction.java"


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/dolphin/browser/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/dolphin/browser/a/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/a/a;-><init>(Ljava/lang/Class;Lcom/dolphin/browser/a/d;)V

    .line 14
    return-void
.end method

.method public static b(Lorg/json/JSONObject;Ljava/lang/Class;Ljava/util/HashMap;)Lcom/dolphin/browser/a/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/dolphin/browser/a/d;",
            ">;)",
            "Lcom/dolphin/browser/a/i;"
        }
    .end annotation

    .prologue
    .line 44
    const-string v0, "command"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/a/d;

    .line 46
    if-eqz v0, :cond_0

    .line 47
    new-instance v1, Lcom/dolphin/browser/a/i;

    invoke-direct {v1, p1, v0}, Lcom/dolphin/browser/a/i;-><init>(Ljava/lang/Class;Lcom/dolphin/browser/a/d;)V

    move-object v0, v1

    .line 49
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 4
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
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 30
    iget-object v2, p0, Lcom/dolphin/browser/a/i;->d:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 32
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p1, p2, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 33
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 34
    iput-object v2, p0, Lcom/dolphin/browser/a/i;->d:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v0, v1

    .line 40
    :goto_0
    return v0

    .line 35
    :catch_0
    move-exception v1

    .line 36
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-super {p0, p1}, Lcom/dolphin/browser/a/a;->a(Ljava/lang/Object;)Z

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/dolphin/browser/a/i;->d:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    const/4 v0, 0x1

    .line 25
    :goto_0
    return v0

    .line 22
    :catch_0
    move-exception v1

    .line 23
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
