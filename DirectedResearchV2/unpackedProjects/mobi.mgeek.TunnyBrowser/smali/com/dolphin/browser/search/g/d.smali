.class public Lcom/dolphin/browser/search/g/d;
.super Ljava/lang/Object;
.source "SearchUrlModifier.java"


# instance fields
.field private a:Lcom/dolphin/browser/search/g/a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/dolphin/browser/search/g/a;->a()Lcom/dolphin/browser/search/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/g/d;->a:Lcom/dolphin/browser/search/g/a;

    .line 23
    return-void
.end method

.method public static a()Lcom/dolphin/browser/search/g/d;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/dolphin/browser/search/g/d;

    invoke-direct {v0}, Lcom/dolphin/browser/search/g/d;-><init>()V

    return-object v0
.end method

.method private static a(Lcom/dolphin/browser/search/g/f;)Z
    .locals 4

    .prologue
    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 74
    invoke-virtual {p0}, Lcom/dolphin/browser/search/g/f;->e()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/search/g/f;->f()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-object p1

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/search/g/d;->a:Lcom/dolphin/browser/search/g/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/g/a;->b()Ljava/util/List;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/dolphin/browser/search/g/e;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/search/g/e;-><init>(Lcom/dolphin/browser/search/g/d;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 48
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/search/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/g/f;

    .line 53
    invoke-static {v0}, Lcom/dolphin/browser/search/g/d;->a(Lcom/dolphin/browser/search/g/f;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 57
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dolphin/browser/search/g/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/URIUtil;->isTargetDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 58
    invoke-virtual {v0}, Lcom/dolphin/browser/search/g/f;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 59
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 60
    invoke-virtual {v0}, Lcom/dolphin/browser/search/g/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dolphin/browser/search/g/f;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 62
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
