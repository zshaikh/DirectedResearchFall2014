.class final Landroid/view/CustomMenuActivity$PanelFeatureState;
.super Ljava/lang/Object;
.source "CustomMenuActivity.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:Landroid/view/c;

.field i:Landroid/view/View;

.field j:Landroid/view/View;

.field k:Landroid/view/Menu;

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field public p:Z

.field q:Z

.field r:Z

.field s:Z

.field t:Landroid/os/Bundle;


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    iput p1, p0, Landroid/view/CustomMenuActivity$PanelFeatureState;->a:I

    .line 623
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/CustomMenuActivity$PanelFeatureState;->q:Z

    .line 624
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 627
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f0201dd

    iput v0, p0, Landroid/view/CustomMenuActivity$PanelFeatureState;->b:I

    .line 628
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f0201de

    iput v0, p0, Landroid/view/CustomMenuActivity$PanelFeatureState;->c:I

    .line 629
    sget-object v0, Lcom/dolphin/browser/n/a;->m:Lmobi/mgeek/TunnyBrowser/R$style;

    const v0, 0x7f0f0001

    iput v0, p0, Landroid/view/CustomMenuActivity$PanelFeatureState;->g:I

    .line 630
    return-void
.end method

.method a(Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 633
    iput-object p1, p0, Landroid/view/CustomMenuActivity$PanelFeatureState;->k:Landroid/view/Menu;

    .line 635
    iget-object v0, p0, Landroid/view/CustomMenuActivity$PanelFeatureState;->t:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 636
    check-cast p1, Lcom/dolphin/browser/ui/menu/MenuBuilder;

    iget-object v0, p0, Landroid/view/CustomMenuActivity$PanelFeatureState;->t:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 637
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/CustomMenuActivity$PanelFeatureState;->t:Landroid/os/Bundle;

    .line 639
    :cond_0
    return-void
.end method
