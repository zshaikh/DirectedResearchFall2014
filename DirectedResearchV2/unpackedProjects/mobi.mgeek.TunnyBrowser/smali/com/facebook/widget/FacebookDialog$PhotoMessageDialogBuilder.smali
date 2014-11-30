.class public Lcom/facebook/widget/FacebookDialog$PhotoMessageDialogBuilder;
.super Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;
.source "FacebookDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase",
        "<",
        "Lcom/facebook/widget/FacebookDialog$PhotoMessageDialogBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 993
    invoke-direct {p0, p1}, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;-><init>(Landroid/app/Activity;)V

    .line 994
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/facebook/widget/FacebookDialog;
    .locals 1

    .prologue
    .line 986
    invoke-super {p0}, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->build()Lcom/facebook/widget/FacebookDialog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic canPresent()Z
    .locals 1

    .prologue
    .line 986
    invoke-super {p0}, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->canPresent()Z

    move-result v0

    return v0
.end method

.method getDialogFeatures()Ljava/util/EnumSet;
    .locals 2
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
    .line 998
    sget-object v0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->MESSAGE_DIALOG:Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    sget-object v1, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->PHOTOS:Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method getMaximumNumberOfPhotos()I
    .locals 1

    .prologue
    .line 1003
    sget v0, Lcom/facebook/widget/FacebookDialog$PhotoMessageDialogBuilder;->MAXIMUM_PHOTO_COUNT:I

    return v0
.end method
