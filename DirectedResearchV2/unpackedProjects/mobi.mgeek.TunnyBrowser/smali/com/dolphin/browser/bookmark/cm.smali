.class Lcom/dolphin/browser/bookmark/cm;
.super Landroid/widget/ArrayAdapter;
.source "ImportBookmarksActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/dolphin/browser/bookmarks/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;

.field private b:Lcom/dolphin/browser/bookmarks/f;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 157
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/cm;->a:Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;

    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 159
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/cm;->b()V

    .line 160
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/cm;->b:Lcom/dolphin/browser/bookmarks/f;

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cm;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x15

    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmarks/d;->a(Landroid/content/Context;I)Lcom/dolphin/browser/bookmarks/f;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/cm;->b:Lcom/dolphin/browser/bookmarks/f;

    .line 168
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Lcom/dolphin/browser/bookmarks/a;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/cm;->b:Lcom/dolphin/browser/bookmarks/f;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/bookmarks/f;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/bookmarks/a;

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmarks/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cm;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 203
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/cm;->a:Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;

    invoke-static {v2}, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->c(Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/cm;->a(I)Lcom/dolphin/browser/bookmarks/a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_1
    return-object v1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/cm;->b:Lcom/dolphin/browser/bookmarks/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmarks/f;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/cm;->a(I)Lcom/dolphin/browser/bookmarks/a;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cm;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 184
    if-nez p2, :cond_0

    .line 185
    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f030094

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 190
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/cm;->a(I)Lcom/dolphin/browser/bookmarks/a;

    move-result-object v1

    .line 191
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 192
    invoke-virtual {v1}, Lcom/dolphin/browser/bookmarks/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 193
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a01a0

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 194
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/cm;->a:Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/cm;->a:Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/dr;->a(Landroid/content/Context;Landroid/widget/CheckBox;)V

    .line 197
    return-object p2
.end method
