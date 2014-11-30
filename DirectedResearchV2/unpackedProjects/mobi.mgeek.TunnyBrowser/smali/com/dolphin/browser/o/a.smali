.class public Lcom/dolphin/browser/o/a;
.super Landroid/widget/LinearLayout;
.source "LocalHtmlAlertView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/CheckBox;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object p2, p0, Lcom/dolphin/browser/o/a;->b:Ljava/lang/String;

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/o/a;->c:Z

    .line 22
    invoke-direct {p0, p1}, Lcom/dolphin/browser/o/a;->a(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03009f

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 44
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020268

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/o/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080260

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/o/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08025f

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/o/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/dolphin/browser/o/a;->a:Landroid/widget/CheckBox;

    .line 48
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dolphin/browser/o/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/dolphin/browser/o/a;->c:Z

    .line 35
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/dolphin/browser/o/a;->c:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/o/a;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080260

    if-ne v0, v1, :cond_1

    .line 53
    iget-object v0, p0, Lcom/dolphin/browser/o/a;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/dolphin/browser/o/b;->a()Lcom/dolphin/browser/o/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/o/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/o/b;->b(Ljava/lang/String;)V

    .line 56
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/o/a;->setVisibility(I)V

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/o/a;->a(Z)V

    .line 59
    :cond_1
    return-void
.end method
