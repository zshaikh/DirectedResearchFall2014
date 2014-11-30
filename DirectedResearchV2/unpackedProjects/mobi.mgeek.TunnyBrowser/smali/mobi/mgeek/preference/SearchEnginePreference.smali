.class Lmobi/mgeek/preference/SearchEnginePreference;
.super Ldolphin/preference/ListPreference;
.source "SearchEnginePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ldolphin/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-static {}, Lcom/dolphin/browser/search/a/c;->a()Lcom/dolphin/browser/search/a/c;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/dolphin/browser/search/a/c;->e()Lcom/dolphin/browser/search/b/b;

    move-result-object v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    invoke-virtual {v3}, Lcom/dolphin/browser/search/b/b;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {v3}, Lcom/dolphin/browser/search/b/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
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

    .line 46
    invoke-virtual {v0}, Lcom/dolphin/browser/search/b/b;->e()Z

    move-result v4

    if-nez v4, :cond_1

    .line 47
    invoke-virtual {v0}, Lcom/dolphin/browser/search/b/b;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {v0}, Lcom/dolphin/browser/search/b/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lmobi/mgeek/preference/SearchEnginePreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lmobi/mgeek/preference/SearchEnginePreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Ldolphin/preference/ListPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 60
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getSearchEngine()Lcom/dolphin/browser/search/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/search/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lmobi/mgeek/preference/SearchEnginePreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    invoke-virtual {p0, v0}, Lmobi/mgeek/preference/SearchEnginePreference;->setValue(Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method
