.class public Lcom/facebook/widget/FacebookDialog$OpenGraphMessageDialogBuilder;
.super Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;
.source "FacebookDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase",
        "<",
        "Lcom/facebook/widget/FacebookDialog$OpenGraphMessageDialogBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/facebook/model/OpenGraphAction;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1543
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;-><init>(Landroid/app/Activity;Lcom/facebook/model/OpenGraphAction;Ljava/lang/String;)V

    .line 1544
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/facebook/widget/FacebookDialog;
    .locals 1

    .prologue
    .line 1530
    invoke-super {p0}, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;->build()Lcom/facebook/widget/FacebookDialog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic canPresent()Z
    .locals 1

    .prologue
    .line 1530
    invoke-super {p0}, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;->canPresent()Z

    move-result v0

    return v0
.end method

.method getDialogFeatures()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<+",
            "Lcom/facebook/widget/FacebookDialog$DialogFeature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1548
    sget-object v0, Lcom/facebook/widget/FacebookDialog$OpenGraphMessageDialogFeature;->OG_MESSAGE_DIALOG:Lcom/facebook/widget/FacebookDialog$OpenGraphMessageDialogFeature;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method