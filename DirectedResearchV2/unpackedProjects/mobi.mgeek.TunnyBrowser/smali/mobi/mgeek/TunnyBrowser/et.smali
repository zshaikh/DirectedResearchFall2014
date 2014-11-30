.class public Lmobi/mgeek/TunnyBrowser/et;
.super Landroid/widget/ArrayAdapter;
.source "ExtensionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/dolphin/browser/extensions/n;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/extensions/n;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 20
    return-void
.end method

.method private a(ILandroid/view/View;)V
    .locals 4

    .prologue
    .line 32
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 33
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0801eb

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 34
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0042

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 35
    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/et;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dolphin/browser/extensions/n;

    .line 36
    invoke-virtual {p0, v1, v2}, Lmobi/mgeek/TunnyBrowser/et;->a(Landroid/widget/TextView;Lcom/dolphin/browser/extensions/n;)V

    .line 37
    invoke-virtual {p0, v0, v2}, Lmobi/mgeek/TunnyBrowser/et;->a(Landroid/widget/ImageView;Lcom/dolphin/browser/extensions/n;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected a(Landroid/widget/ImageView;Lcom/dolphin/browser/extensions/n;)V
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p2}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    return-void
.end method

.method protected a(Landroid/widget/TextView;Lcom/dolphin/browser/extensions/n;)V
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p2}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 24
    if-nez p2, :cond_0

    .line 25
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/et;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f030073

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 27
    :cond_0
    invoke-direct {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/et;->a(ILandroid/view/View;)V

    .line 28
    return-object p2
.end method
