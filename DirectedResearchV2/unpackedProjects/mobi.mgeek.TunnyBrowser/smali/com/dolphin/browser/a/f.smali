.class public Lcom/dolphin/browser/a/f;
.super Lcom/dolphin/browser/a/a;
.source "ParamAction.java"


# instance fields
.field protected e:[Ljava/lang/Object;


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
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/a/a;-><init>(Ljava/lang/Class;Lcom/dolphin/browser/a/d;)V

    .line 35
    iput-object p3, p0, Lcom/dolphin/browser/a/f;->e:[Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/Class;Lcom/dolphin/browser/a/d;)Lcom/dolphin/browser/a/f;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/dolphin/browser/a/d;",
            ")",
            "Lcom/dolphin/browser/a/f;"
        }
    .end annotation

    .prologue
    .line 92
    const-string v0, "args"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v1, Lcom/dolphin/browser/a/f;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {v1, p1, p2, v2}, Lcom/dolphin/browser/a/f;-><init>(Ljava/lang/Class;Lcom/dolphin/browser/a/d;[Ljava/lang/Object;)V

    .line 94
    return-object v1
.end method

.method public static b(Lorg/json/JSONObject;Ljava/lang/Class;Ljava/util/HashMap;)Lcom/dolphin/browser/a/f;
    .locals 3
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
            "Lcom/dolphin/browser/a/f;"
        }
    .end annotation

    .prologue
    .line 80
    const-string v0, "command"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/a/d;

    .line 82
    const/16 v2, 0x67

    if-ne v1, v2, :cond_0

    .line 83
    invoke-static {p0, p1, v0}, Lcom/dolphin/browser/a/h;->b(Lorg/json/JSONObject;Ljava/lang/Class;Lcom/dolphin/browser/a/d;)Lcom/dolphin/browser/a/h;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    .line 84
    :cond_0
    const/16 v2, 0x66

    if-ne v1, v2, :cond_1

    .line 85
    invoke-static {p0, p1, v0}, Lcom/dolphin/browser/a/g;->b(Lorg/json/JSONObject;Ljava/lang/Class;Lcom/dolphin/browser/a/d;)Lcom/dolphin/browser/a/g;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/dolphin/browser/a/f;->a(Lorg/json/JSONObject;Ljava/lang/Class;Lcom/dolphin/browser/a/d;)Lcom/dolphin/browser/a/f;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Lorg/json/JSONObject;)Z
    .locals 2

    .prologue
    .line 106
    const-string v0, "args"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "null"

    const-string v1, "args"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "args"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "command"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_1

    const-string v0, "command"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x67

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 39
    const-string v0, "args"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/dolphin/browser/a/f;->e:[Ljava/lang/Object;

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

    .line 65
    iget-object v2, p0, Lcom/dolphin/browser/a/f;->d:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 68
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p1, p2, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 69
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 70
    iput-object v2, p0, Lcom/dolphin/browser/a/f;->d:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v0, v1

    .line 76
    :goto_0
    return v0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 45
    invoke-super {p0, p1}, Lcom/dolphin/browser/a/a;->a(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 48
    :cond_1
    iget-object v2, p0, Lcom/dolphin/browser/a/f;->e:[Ljava/lang/Object;

    .line 49
    if-eqz v2, :cond_0

    array-length v2, v2

    if-eqz v2, :cond_0

    .line 55
    :try_start_0
    iget-object v2, p0, Lcom/dolphin/browser/a/f;->d:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/dolphin/browser/a/f;->e:[Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/dolphin/browser/a/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/dolphin/browser/a/f;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/dolphin/browser/a/f;->e:[Ljava/lang/Object;

    check-cast p1, Lcom/dolphin/browser/a/f;

    iget-object v1, p1, Lcom/dolphin/browser/a/f;->e:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
