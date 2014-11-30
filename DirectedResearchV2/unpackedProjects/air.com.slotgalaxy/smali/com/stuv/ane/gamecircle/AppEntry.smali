.class public Lcom/stuv/ane/gamecircle/AppEntry;
.super Landroid/app/Activity;
.source "AppEntry.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f030001

    if-eq v0, v1, :cond_0

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f030002

    if-eq v0, v1, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f030003

    if-eq v0, v1, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 43
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const/high16 v0, 0x7f020000

    invoke-virtual {p0, v0}, Lcom/stuv/ane/gamecircle/AppEntry;->setContentView(I)V

    .line 17
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/stuv/ane/gamecircle/AppEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/stuv/ane/gamecircle/AppEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/stuv/ane/gamecircle/AppEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/stuv/ane/gamecircle/AppEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/stuv/ane/gamecircle/GameCircleWrapper;->init(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V

    .line 23
    return-void
.end method
