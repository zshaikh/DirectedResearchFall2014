.class abstract Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;
.super Lcom/facebook/widget/FacebookDialog$Builder;
.source "FacebookDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONCRETE:",
        "Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase",
        "<*>;>",
        "Lcom/facebook/widget/FacebookDialog$Builder",
        "<TCONCRETE;>;"
    }
.end annotation


# instance fields
.field private friends:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private imageAttachmentUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private place:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 706
    invoke-direct {p0, p1}, Lcom/facebook/widget/FacebookDialog$Builder;-><init>(Landroid/app/Activity;)V

    .line 698
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->imageAttachmentUrls:Ljava/util/ArrayList;

    .line 707
    return-void
.end method


# virtual methods
.method public addPhotoFiles(Ljava/util/Collection;)Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;)TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 763
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->imageAttachmentUrls:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->addImageAttachmentFiles(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 766
    return-object p0
.end method

.method public addPhotos(Ljava/util/Collection;)Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 747
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->imageAttachmentUrls:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->addImageAttachments(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 750
    return-object p0
.end method

.method setBundleExtras(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 780
    const-string v0, "com.facebook.platform.extra.APPLICATION_ID"

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->applicationId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const-string v0, "com.facebook.platform.extra.APPLICATION_NAME"

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->applicationName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const-string v0, "com.facebook.platform.extra.PLACE"

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->place:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const-string v0, "com.facebook.platform.extra.PHOTOS"

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->imageAttachmentUrls:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 785
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->friends:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 786
    const-string v0, "com.facebook.platform.extra.FRIENDS"

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->friends:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 788
    :cond_0
    return-object p1
.end method

.method public setFriends(Ljava/util/List;)Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 729
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->friends:Ljava/util/ArrayList;

    .line 732
    return-object p0
.end method

.method public setPlace(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 716
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->place:Ljava/lang/String;

    .line 719
    return-object p0
.end method

.method validate()V
    .locals 2

    .prologue
    .line 771
    invoke-super {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->validate()V

    .line 773
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->imageAttachmentUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Must specify at least one photo."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :cond_0
    return-void
.end method
