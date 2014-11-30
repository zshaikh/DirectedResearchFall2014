.class public Lcom/dolphin/browser/sonar/ui/RecognizingIcon;
.super Landroid/widget/RelativeLayout;
.source "RecognizingIcon.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/dolphin/browser/sonar/ui/PointProgressView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/dolphin/browser/sonar/ui/RecognizingIcon;->a(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/dolphin/browser/sonar/ui/RecognizingIcon;->a(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03011b

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803d1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sonar/ui/RecognizingIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/sonar/ui/RecognizingIcon;->a:Landroid/widget/TextView;

    .line 31
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803d0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sonar/ui/RecognizingIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sonar/ui/PointProgressView;

    iput-object v0, p0, Lcom/dolphin/browser/sonar/ui/RecognizingIcon;->b:Lcom/dolphin/browser/sonar/ui/PointProgressView;

    .line 32
    invoke-direct {p0}, Lcom/dolphin/browser/sonar/ui/RecognizingIcon;->c()V

    .line 33
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    const v3, 0x7f0a0062

    .line 36
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/dolphin/browser/sonar/ui/RecognizingIcon;->a:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v3}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    iget-object v1, p0, Lcom/dolphin/browser/sonar/ui/RecognizingIcon;->b:Lcom/dolphin/browser/sonar/ui/PointProgressView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/sonar/ui/PointProgressView;->a(I)V

    .line 39
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/RecognizingIcon;->b:Lcom/dolphin/browser/sonar/ui/PointProgressView;

    invoke-virtual {v0}, Lcom/dolphin/browser/sonar/ui/PointProgressView;->a()V

    .line 43
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sonar/ui/RecognizingIcon;->setVisibility(I)V

    .line 57
    invoke-virtual {p0}, Lcom/dolphin/browser/sonar/ui/RecognizingIcon;->a()V

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/sonar/ui/RecognizingIcon;->b()V

    .line 60
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sonar/ui/RecognizingIcon;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/RecognizingIcon;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/RecognizingIcon;->b:Lcom/dolphin/browser/sonar/ui/PointProgressView;

    invoke-virtual {v0}, Lcom/dolphin/browser/sonar/ui/PointProgressView;->b()V

    .line 47
    return-void
.end method
