.class public Lcom/dolphin/browser/search/d/i;
.super Ljava/lang/Object;
.source "SearchRedirector.java"


# instance fields
.field private a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/dolphin/browser/search/d/b;->a()Lcom/dolphin/browser/search/d/b;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/dolphin/browser/search/d/b;->b()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/d/i;->a:Ljava/util/LinkedHashMap;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/search/d/j;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/dolphin/browser/search/d/i;-><init>()V

    return-void
.end method

.method public static a()Lcom/dolphin/browser/search/d/i;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/dolphin/browser/search/d/k;->a:Lcom/dolphin/browser/search/d/i;

    return-object v0
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lcom/dolphin/browser/search/a/c;->a()Lcom/dolphin/browser/search/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/search/a/c;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    .line 69
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/util/bn;->f()Ljava/util/Locale;

    move-result-object v0

    .line 70
    sget-object v1, Lcom/dolphin/browser/util/bk;->c:Lcom/dolphin/browser/util/bk;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/bk;->b(Ljava/util/Locale;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/search/d/i;->a:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    :cond_0
    const-string v0, ""

    .line 45
    :goto_0
    return-object v0

    .line 44
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/dolphin/browser/search/d/i;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/dolphin/browser/search/d/a;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 50
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/search/d/i;->a:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/search/d/i;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 59
    :goto_0
    return-object v0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/search/d/i;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/cn;->a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 57
    new-instance v1, Lcom/dolphin/browser/search/d/a;

    iget-object v0, p0, Lcom/dolphin/browser/search/d/i;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/dolphin/browser/search/d/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 59
    goto :goto_0
.end method
