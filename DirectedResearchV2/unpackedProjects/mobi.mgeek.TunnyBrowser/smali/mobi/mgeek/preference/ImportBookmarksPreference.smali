.class public Lmobi/mgeek/preference/ImportBookmarksPreference;
.super Lcom/mgeek/android/ui/MultiChoicePreference;
.source "ImportBookmarksPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/mgeek/android/ui/MultiChoicePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected a()[Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e017c

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0186

    aput v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e05fe

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lmobi/mgeek/preference/ImportBookmarksPreference;->a([I)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected b()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "dolphin_browser"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dolphin_mini"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "stock_browser"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected c()[Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected d()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    invoke-virtual {p0}, Lmobi/mgeek/preference/ImportBookmarksPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 53
    const-string v2, "dolphin_browser"

    invoke-virtual {p0, v2}, Lmobi/mgeek/preference/ImportBookmarksPreference;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    new-instance v2, Lcom/dolphin/browser/bookmarks/TucuxiBookmarkImporter;

    invoke-direct {v2, v1}, Lcom/dolphin/browser/bookmarks/TucuxiBookmarkImporter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    const-string v2, "stock_browser"

    invoke-virtual {p0, v2}, Lmobi/mgeek/preference/ImportBookmarksPreference;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    invoke-static {v1}, Lcom/dolphin/browser/bookmarks/o;->a(Landroid/content/Context;)Lcom/dolphin/browser/bookmarks/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_1
    const-string v2, "dolphin_mini"

    invoke-virtual {p0, v2}, Lmobi/mgeek/preference/ImportBookmarksPreference;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    new-instance v2, Lcom/dolphin/browser/bookmarks/m;

    invoke-direct {v2, v1}, Lcom/dolphin/browser/bookmarks/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 63
    invoke-virtual {p0}, Lmobi/mgeek/preference/ImportBookmarksPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/bookmarks/d;->a(Landroid/content/Context;Lcom/dolphin/browser/bookmarks/k;Ljava/util/List;)V

    .line 65
    :cond_3
    return-void
.end method
