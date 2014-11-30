.class public Lcom/dolphin/browser/gesture/ui/c;
.super Landroid/app/Dialog;
.source "GestureChooserBox.java"


# instance fields
.field private a:Landroid/widget/GridView;

.field private b:Landroid/widget/ListAdapter;

.field private c:Landroid/widget/AdapterView$OnItemClickListener;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/dolphin/browser/n/a;->m:Lmobi/mgeek/TunnyBrowser/R$style;

    const v0, 0x7f0f004f

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 28
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 44
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/c;->d:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a008e

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 46
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/c;->e:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020305

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/c;->a:Landroid/widget/GridView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020092

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .prologue
    .line 62
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/c;->c:Landroid/widget/AdapterView$OnItemClickListener;

    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/c;->a:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/c;->a:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    :cond_0
    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 1

    .prologue
    .line 51
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/c;->b:Landroid/widget/ListAdapter;

    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/c;->a:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/c;->a:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f030086

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/c;->e:Landroid/view/View;

    .line 34
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/c;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/c;->setContentView(Landroid/view/View;)V

    .line 35
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080242

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/c;->a:Landroid/widget/GridView;

    .line 36
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080241

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/ui/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/c;->d:Landroid/widget/ImageView;

    .line 37
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/c;->a:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/c;->c:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/c;->a:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/c;->b:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 39
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/ui/c;->a()V

    .line 40
    return-void
.end method
