.class public Ldolphin/preference/ImportBookmarksGroupPreference;
.super Ldolphin/preference/MultiChoiceGroupPreference;
.source "ImportBookmarksGroupPreference.java"


# instance fields
.field private a:Lcom/dolphin/browser/bookmarks/f;

.field private b:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ldolphin/preference/MultiChoiceGroupPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method static synthetic a(Ldolphin/preference/ImportBookmarksGroupPreference;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ldolphin/preference/ImportBookmarksGroupPreference;->n()V

    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Ldolphin/preference/ImportBookmarksGroupPreference;->a:Lcom/dolphin/browser/bookmarks/f;

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Ldolphin/preference/ImportBookmarksGroupPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x15

    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmarks/d;->a(Landroid/content/Context;I)Lcom/dolphin/browser/bookmarks/f;

    move-result-object v0

    iput-object v0, p0, Ldolphin/preference/ImportBookmarksGroupPreference;->a:Lcom/dolphin/browser/bookmarks/f;

    .line 37
    :cond_0
    return-void
.end method

.method private n()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 107
    .line 108
    invoke-virtual {p0}, Ldolphin/preference/ImportBookmarksGroupPreference;->i()[Ljava/lang/String;

    move-result-object v2

    .line 109
    if-eqz v2, :cond_0

    .line 110
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 111
    invoke-virtual {p0, v4}, Ldolphin/preference/ImportBookmarksGroupPreference;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 112
    const/4 v0, 0x1

    .line 117
    :cond_0
    iget-object v1, p0, Ldolphin/preference/ImportBookmarksGroupPreference;->b:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 118
    iget-object v1, p0, Ldolphin/preference/ImportBookmarksGroupPreference;->b:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 120
    :cond_1
    return-void

    .line 110
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/widget/Button;)V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0, p1}, Ldolphin/preference/MultiChoiceGroupPreference;->a(Landroid/widget/Button;)V

    .line 65
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e032a

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 66
    iput-object p1, p0, Ldolphin/preference/ImportBookmarksGroupPreference;->b:Landroid/widget/Button;

    .line 67
    return-void
.end method

.method protected e()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Ldolphin/preference/m;

    invoke-direct {v0, p0}, Ldolphin/preference/m;-><init>(Ldolphin/preference/ImportBookmarksGroupPreference;)V

    return-object v0
.end method

.method protected h()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ldolphin/preference/ImportBookmarksGroupPreference;->m()V

    .line 42
    iget-object v0, p0, Ldolphin/preference/ImportBookmarksGroupPreference;->a:Lcom/dolphin/browser/bookmarks/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmarks/f;->a()[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected i()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Ldolphin/preference/ImportBookmarksGroupPreference;->m()V

    .line 48
    iget-object v0, p0, Ldolphin/preference/ImportBookmarksGroupPreference;->a:Lcom/dolphin/browser/bookmarks/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmarks/f;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Ldolphin/preference/ImportBookmarksGroupPreference;->a:Lcom/dolphin/browser/bookmarks/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmarks/f;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 50
    iget-object v0, p0, Ldolphin/preference/ImportBookmarksGroupPreference;->a:Lcom/dolphin/browser/bookmarks/f;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/bookmarks/f;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/bookmarks/a;

    .line 51
    invoke-virtual {v0}, Lcom/dolphin/browser/bookmarks/a;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 49
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 53
    :cond_0
    return-object v2
.end method

.method protected j()[Z
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ldolphin/preference/ImportBookmarksGroupPreference;->m()V

    .line 59
    iget-object v0, p0, Ldolphin/preference/ImportBookmarksGroupPreference;->a:Lcom/dolphin/browser/bookmarks/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmarks/f;->size()I

    move-result v0

    new-array v0, v0, [Z

    return-object v0
.end method

.method protected k()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 71
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Ldolphin/preference/ImportBookmarksGroupPreference;->a:Lcom/dolphin/browser/bookmarks/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmarks/f;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    .line 72
    :goto_0
    iget-object v0, p0, Ldolphin/preference/ImportBookmarksGroupPreference;->a:Lcom/dolphin/browser/bookmarks/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmarks/f;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 73
    iget-object v0, p0, Ldolphin/preference/ImportBookmarksGroupPreference;->a:Lcom/dolphin/browser/bookmarks/f;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/bookmarks/f;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/bookmarks/a;

    .line 74
    invoke-virtual {v0}, Lcom/dolphin/browser/bookmarks/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ldolphin/preference/ImportBookmarksGroupPreference;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 79
    invoke-virtual {p0}, Ldolphin/preference/ImportBookmarksGroupPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v3}, Lcom/dolphin/browser/bookmarks/d;->a(Landroid/content/Context;Lcom/dolphin/browser/bookmarks/k;Ljava/util/List;)V

    .line 81
    :cond_2
    return v2
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0, p1}, Ldolphin/preference/MultiChoiceGroupPreference;->onBindView(Landroid/view/View;)V

    .line 102
    invoke-direct {p0}, Ldolphin/preference/ImportBookmarksGroupPreference;->n()V

    .line 103
    return-void
.end method
