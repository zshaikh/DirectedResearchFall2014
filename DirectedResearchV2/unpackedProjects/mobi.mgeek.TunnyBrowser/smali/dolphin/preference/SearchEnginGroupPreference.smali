.class public Ldolphin/preference/SearchEnginGroupPreference;
.super Ldolphin/preference/SingleChoiceGroupPreference;
.source "SearchEnginGroupPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ldolphin/preference/SingleChoiceGroupPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-static {}, Lcom/dolphin/browser/search/a/c;->a()Lcom/dolphin/browser/search/a/c;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/dolphin/browser/search/a/c;->e()Lcom/dolphin/browser/search/b/b;

    move-result-object v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    invoke-virtual {v3}, Lcom/dolphin/browser/search/b/b;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {v3}, Lcom/dolphin/browser/search/b/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/search/a/c;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/b/b;

    .line 35
    invoke-virtual {v0}, Lcom/dolphin/browser/search/b/b;->e()Z

    move-result v4

    if-nez v4, :cond_1

    .line 36
    invoke-virtual {v0}, Lcom/dolphin/browser/search/b/b;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {v0}, Lcom/dolphin/browser/search/b/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Ldolphin/preference/SearchEnginGroupPreference;->a([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Ldolphin/preference/SingleChoiceGroupPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 50
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getSearchEngine()Lcom/dolphin/browser/search/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/search/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Ldolphin/preference/SearchEnginGroupPreference;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    invoke-virtual {p0, v0}, Ldolphin/preference/SearchEnginGroupPreference;->a(Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method
