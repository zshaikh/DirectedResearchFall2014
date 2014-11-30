.class public Lcom/dolphin/browser/share/q;
.super Landroid/widget/RelativeLayout;
.source "ShareGridItem.java"


# instance fields
.field private a:Lcom/dolphin/browser/share/b/k;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 30
    iput p2, p0, Lcom/dolphin/browser/share/q;->d:I

    .line 31
    iput p3, p0, Lcom/dolphin/browser/share/q;->e:I

    .line 32
    iput-boolean p4, p0, Lcom/dolphin/browser/share/q;->f:Z

    .line 33
    invoke-direct {p0, p1}, Lcom/dolphin/browser/share/q;->a(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300ee

    invoke-static {p1, v0, p0}, Lcom/dolphin/browser/share/q;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/q;->setGravity(I)V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/q;->setDuplicateParentStateEnabled(Z)V

    .line 40
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/share/q;->b:Landroid/widget/ImageView;

    .line 41
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/share/q;->c:Landroid/widget/TextView;

    .line 42
    invoke-direct {p0}, Lcom/dolphin/browser/share/q;->b()V

    .line 43
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 46
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 47
    iget-boolean v1, p0, Lcom/dolphin/browser/share/q;->f:Z

    if-eqz v1, :cond_0

    .line 48
    iget v1, p0, Lcom/dolphin/browser/share/q;->e:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/share/q;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/share/q;->c:Landroid/widget/TextView;

    iget v2, p0, Lcom/dolphin/browser/share/q;->d:I

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    return-void

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/share/q;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a010a

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0062

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/cu;->c(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/share/q;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/share/b/k;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dolphin/browser/share/q;->a:Lcom/dolphin/browser/share/b/k;

    return-object v0
.end method

.method public a(Lcom/dolphin/browser/share/b/k;)V
    .locals 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/dolphin/browser/share/q;->a:Lcom/dolphin/browser/share/b/k;

    .line 61
    invoke-virtual {p1}, Lcom/dolphin/browser/share/b/k;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 62
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object v1, p0, Lcom/dolphin/browser/share/q;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object v0, p0, Lcom/dolphin/browser/share/q;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dolphin/browser/share/b/k;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method
