.class public Lcom/stuv/ane/w3i/AneW3iActivity;
.super Landroid/app/Activity;
.source "AneW3iActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f030002

    if-ne v0, v1, :cond_0

    .line 49
    const-string v0, "offerwall_default"

    invoke-static {v0}, Lcom/stuv/ane/w3i/W3iWrapper;->showPlacement(Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const/high16 v2, 0x7f020000

    invoke-virtual {p0, v2}, Lcom/stuv/ane/w3i/AneW3iActivity;->setContentView(I)V

    .line 29
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lcom/stuv/ane/w3i/AneW3iActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 30
    .local v0, "authButton":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/stuv/ane/w3i/AneW3iActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 33
    .local v1, "initButton":Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/stuv/ane/w3i/W3iWrapper;->init(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V

    .line 39
    const/16 v2, 0x3231

    const-string v3, "Slot Galaxy"

    const-string v4, "air.com.slotgalaxy"

    const-string v5, "sdkjv39d-x99d"

    invoke-static {v2, v3, v4, v5}, Lcom/stuv/ane/w3i/W3iWrapper;->initialise(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/stuv/ane/w3i/W3iWrapper;->createSession()V

    .line 43
    return-void
.end method
