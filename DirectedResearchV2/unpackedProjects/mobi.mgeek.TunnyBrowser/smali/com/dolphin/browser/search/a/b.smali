.class public Lcom/dolphin/browser/search/a/b;
.super Ljava/lang/Object;
.source "SearchCategoryConfig.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/dolphin/browser/search/a/b;->a:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    const-string v1, "Amazon"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    const-string v0, "amazon"

    .line 109
    :cond_0
    :goto_0
    return-object v0

    .line 95
    :cond_1
    const-string v1, "Amazon JP"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    const-string v0, "amazon_jp"

    goto :goto_0

    .line 97
    :cond_2
    const-string v1, "YouTube"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    const-string v0, "youtube"

    goto :goto_0

    .line 99
    :cond_3
    const-string v1, "Wikipedia"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 100
    const-string v0, "wikipedia"

    goto :goto_0

    .line 101
    :cond_4
    const-string v1, "Ebay"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 102
    const-string v0, "ebay"

    goto :goto_0

    .line 103
    :cond_5
    const-string v1, "Twitter"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 104
    const-string v0, "twitter"

    goto :goto_0

    .line 105
    :cond_6
    const-string v1, "Facebook"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    const-string v0, "facebook"

    goto :goto_0
.end method

.method private c()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dolphin/browser/search/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-direct {p0}, Lcom/dolphin/browser/search/a/b;->c()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_search_category_last_modified"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 51
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 60
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-direct {p0}, Lcom/dolphin/browser/search/a/b;->c()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_search_category_setting_changed"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 62
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/dolphin/browser/search/a/b;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_search_category_setting_changed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/dolphin/browser/search/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    if-nez v0, :cond_0

    .line 87
    :goto_0
    return p2

    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/search/a/b;->c()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/dolphin/browser/search/a/b;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "search_engine"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
