.class public Lcom/dolphin/browser/a/c;
.super Ljava/lang/Object;
.source "ActionManager.java"


# static fields
.field private static a:Lcom/dolphin/browser/a/c;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/dolphin/browser/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/a/c;->b:Landroid/content/Context;

    .line 48
    iput-object p1, p0, Lcom/dolphin/browser/a/c;->e:Ljava/lang/Class;

    .line 49
    return-void
.end method

.method public static final a()Lcom/dolphin/browser/a/c;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/dolphin/browser/a/c;->a:Lcom/dolphin/browser/a/c;

    if-nez v0, :cond_0

    .line 41
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getActionExecutorClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/a/c;->a(Ljava/lang/Class;)V

    .line 43
    :cond_0
    sget-object v0, Lcom/dolphin/browser/a/c;->a:Lcom/dolphin/browser/a/c;

    return-object v0
.end method

.method private static final a(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 33
    if-nez p0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "actionExecutorClass should not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    new-instance v0, Lcom/dolphin/browser/a/c;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/a/c;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/dolphin/browser/a/c;->a:Lcom/dolphin/browser/a/c;

    .line 37
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/a/c;->c:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 71
    iget-object v0, p0, Lcom/dolphin/browser/a/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/dolphin/browser/core/R$array;->supported_actions:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/a/d;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/a/d;

    .line 73
    invoke-virtual {v0}, Lcom/dolphin/browser/a/d;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 75
    :cond_0
    iput-object v1, p0, Lcom/dolphin/browser/a/c;->c:Ljava/util/HashMap;

    .line 77
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/dolphin/browser/a/c;->d:Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public excute(Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/a/c;->d:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/a/c;->b()V

    .line 92
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    iget-object v1, p0, Lcom/dolphin/browser/a/c;->e:Ljava/lang/Class;

    iget-object v2, p0, Lcom/dolphin/browser/a/c;->c:Ljava/util/HashMap;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/a/a;->a(Lorg/json/JSONObject;Ljava/lang/Class;Ljava/util/HashMap;)Lcom/dolphin/browser/a/a;

    move-result-object v0

    .line 98
    instance-of v1, v0, Lcom/dolphin/browser/a/e;

    if-eqz v1, :cond_1

    .line 99
    new-instance v0, Lcom/dolphin/browser/a/b;

    const-string v1, "unsupported command."

    invoke-direct {v0, v1}, Lcom/dolphin/browser/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/a/c;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/a/a;->a(Ljava/lang/Object;)Z

    goto :goto_0
.end method
