.class public Lcom/facebook/widget/FacebookDialog$MessageDialogBuilder;
.super Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;
.source "FacebookDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase",
        "<",
        "Lcom/facebook/widget/FacebookDialog$MessageDialogBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1021
    invoke-direct {p0, p1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;-><init>(Landroid/app/Activity;)V

    .line 1022
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/facebook/widget/FacebookDialog;
    .locals 1

    .prologue
    .line 1013
    invoke-super {p0}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->build()Lcom/facebook/widget/FacebookDialog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic canPresent()Z
    .locals 1

    .prologue
    .line 1013
    invoke-super {p0}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->canPresent()Z

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
    .line 1026
    sget-object v0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->MESSAGE_DIALOG:Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method
