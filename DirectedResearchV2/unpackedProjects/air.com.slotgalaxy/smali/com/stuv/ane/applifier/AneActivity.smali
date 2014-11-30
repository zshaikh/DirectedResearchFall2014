.class public Lcom/stuv/ane/applifier/AneActivity;
.super Landroid/app/Activity;
.source "AneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static _wrapper:Lcom/stuv/ane/applifier/ApplifierWrapper;


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
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f030001

    if-ne v0, v1, :cond_0

    .line 48
    sget-object v0, Lcom/stuv/ane/applifier/AneActivity;->_wrapper:Lcom/stuv/ane/applifier/ApplifierWrapper;

    const-string v1, "5"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/stuv/ane/applifier/ApplifierWrapper;->showImpact(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 55
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const/high16 v2, 0x7f020000

    invoke-virtual {p0, v2}, Lcom/stuv/ane/applifier/AneActivity;->setContentView(I)V

    .line 31
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/stuv/ane/applifier/AneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 32
    .local v0, "authButton":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lcom/stuv/ane/applifier/AneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 35
    .local v1, "initButton":Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    new-instance v2, Lcom/stuv/ane/applifier/ApplifierWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/stuv/ane/applifier/ApplifierWrapper;-><init>(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V

    sput-object v2, Lcom/stuv/ane/applifier/AneActivity;->_wrapper:Lcom/stuv/ane/applifier/ApplifierWrapper;

    .line 39
    sget-object v2, Lcom/stuv/ane/applifier/AneActivity;->_wrapper:Lcom/stuv/ane/applifier/ApplifierWrapper;

    const-string v3, "12373"

    invoke-virtual {v2, v3, v4, v4}, Lcom/stuv/ane/applifier/ApplifierWrapper;->initialise(Ljava/lang/String;ZZ)V

    .line 41
    return-void
.end method
