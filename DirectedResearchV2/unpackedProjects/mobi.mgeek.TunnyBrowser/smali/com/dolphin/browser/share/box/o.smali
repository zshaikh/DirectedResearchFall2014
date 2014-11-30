.class public Lcom/dolphin/browser/share/box/o;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public static a(Lcom/b/a/a/b;)J
    .locals 2

    .prologue
    .line 17
    const-wide/16 v0, 0x0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/b/a/a/b;->a()J

    move-result-wide v0

    .line 21
    :cond_0
    return-wide v0
.end method

.method private static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00cd

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    const-string v0, ".*\\.(png|jpg|jpeg|gif)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .line 56
    :cond_0
    return v0
.end method

.method public static b(Lcom/b/a/a/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    .line 26
    if-nez p0, :cond_0

    .line 27
    invoke-static {}, Lcom/dolphin/browser/share/box/o;->a()Ljava/lang/String;

    move-result-object v0

    .line 35
    :goto_0
    return-object v0

    .line 29
    :cond_0
    invoke-static {p0}, Lcom/dolphin/browser/share/box/o;->c(Lcom/b/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-static {}, Lcom/dolphin/browser/share/box/o;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/b/a/a/b;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Lcom/b/a/a/b;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 43
    if-nez p0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/b/a/a/b;->a()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
