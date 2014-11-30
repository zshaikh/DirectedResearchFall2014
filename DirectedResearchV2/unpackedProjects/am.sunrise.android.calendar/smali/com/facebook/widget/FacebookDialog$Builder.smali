.class abstract Lcom/facebook/widget/FacebookDialog$Builder;
.super Ljava/lang/Object;
.source "FacebookDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONCRETE:",
        "Lcom/facebook/widget/FacebookDialog$Builder",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final activity:Landroid/app/Activity;

.field protected final appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

.field protected final applicationId:Ljava/lang/String;

.field protected applicationName:Ljava/lang/String;

.field protected fragment:Landroid/support/v4/app/Fragment;

.field protected imageAttachmentFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field protected imageAttachments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->imageAttachments:Ljava/util/HashMap;

    .line 342
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->imageAttachmentFiles:Ljava/util/HashMap;

    .line 345
    const-string v0, "activity"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    .line 348
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationId:Ljava/lang/String;

    .line 349
    new-instance v0, Lcom/facebook/widget/FacebookDialog$PendingCall;

    const v1, 0xfacf

    invoke-direct {v0, v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    .line 350
    return-void
.end method


# virtual methods
.method protected addImageAttachment(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 498
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->imageAttachments:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    return-object p0
.end method

.method protected addImageAttachment(Ljava/lang/String;Ljava/io/File;)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 505
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->imageAttachmentFiles:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    return-object p0
.end method

.method protected addImageAttachmentFiles(Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 469
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 470
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 471
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 473
    invoke-virtual {p0, v3, v0}, Lcom/facebook/widget/FacebookDialog$Builder;->addImageAttachment(Ljava/lang/String;Ljava/io/File;)Lcom/facebook/widget/FacebookDialog$Builder;

    .line 475
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationId:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v4}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v4

    invoke-static {v0, v4, v3}, Lcom/facebook/NativeAppCallContentProvider;->getAttachmentUrl(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 480
    :cond_0
    return-object v1
.end method

.method protected addImageAttachments(Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 455
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 456
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 458
    invoke-virtual {p0, v3, v0}, Lcom/facebook/widget/FacebookDialog$Builder;->addImageAttachment(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/facebook/widget/FacebookDialog$Builder;

    .line 460
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationId:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v4}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v4

    invoke-static {v0, v4, v3}, Lcom/facebook/NativeAppCallContentProvider;->getAttachmentUrl(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 465
    :cond_0
    return-object v1
.end method

.method public build()Lcom/facebook/widget/FacebookDialog;
    .locals 6

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->validate()V

    .line 404
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 405
    const-string v1, "com.facebook.platform.extra.APPLICATION_ID"

    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/widget/FacebookDialog$Builder;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v1, "com.facebook.platform.extra.APPLICATION_NAME"

    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/widget/FacebookDialog$Builder;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0, v0}, Lcom/facebook/widget/FacebookDialog$Builder;->setBundleExtras(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 409
    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->getDialogFeatures()Ljava/util/EnumSet;

    move-result-object v1

    # invokes: Lcom/facebook/widget/FacebookDialog;->getActionForFeatures(Ljava/lang/Iterable;)Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/widget/FacebookDialog;->access$100(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 410
    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->getDialogFeatures()Ljava/util/EnumSet;

    move-result-object v3

    # invokes: Lcom/facebook/widget/FacebookDialog;->getMinVersionForFeatures(Ljava/lang/Iterable;)I
    invoke-static {v3}, Lcom/facebook/widget/FacebookDialog;->access$200(Ljava/lang/Iterable;)I

    move-result v3

    # invokes: Lcom/facebook/widget/FacebookDialog;->getProtocolVersionForNativeDialog(Landroid/content/Context;Ljava/lang/String;I)I
    invoke-static {v2, v1, v3}, Lcom/facebook/widget/FacebookDialog;->access$300(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 413
    iget-object v3, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    invoke-static {v3, v1, v2, v0}, Lcom/facebook/internal/NativeProtocol;->createPlatformActivityIntent(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 414
    if-nez v0, :cond_0

    .line 415
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Unable to create Intent; this likely means the Facebook app is not installed."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_0
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    # invokes: Lcom/facebook/widget/FacebookDialog$PendingCall;->setRequestIntent(Landroid/content/Intent;)V
    invoke-static {v1, v0}, Lcom/facebook/widget/FacebookDialog$PendingCall;->access$400(Lcom/facebook/widget/FacebookDialog$PendingCall;Landroid/content/Intent;)V

    .line 420
    new-instance v0, Lcom/facebook/widget/FacebookDialog;

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog$Builder;->fragment:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->getOnPresentCallback()Lcom/facebook/widget/FacebookDialog$OnPresentCallback;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/FacebookDialog;-><init>(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Lcom/facebook/widget/FacebookDialog$PendingCall;Lcom/facebook/widget/FacebookDialog$OnPresentCallback;Lcom/facebook/widget/FacebookDialog$1;)V

    return-object v0
.end method

.method public canPresent()Z
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->getDialogFeatures()Ljava/util/EnumSet;

    move-result-object v1

    # invokes: Lcom/facebook/widget/FacebookDialog;->handleCanPresent(Landroid/content/Context;Ljava/lang/Iterable;)Z
    invoke-static {v0, v1}, Lcom/facebook/widget/FacebookDialog;->access$600(Landroid/content/Context;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method abstract getDialogFeatures()Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<+",
            "Lcom/facebook/widget/FacebookDialog$DialogFeature;",
            ">;"
        }
    .end annotation
.end method

.method getImageAttachmentNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 484
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->imageAttachments:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getOnPresentCallback()Lcom/facebook/widget/FacebookDialog$OnPresentCallback;
    .locals 1

    .prologue
    .line 438
    new-instance v0, Lcom/facebook/widget/FacebookDialog$Builder$1;

    invoke-direct {v0, p0}, Lcom/facebook/widget/FacebookDialog$Builder$1;-><init>(Lcom/facebook/widget/FacebookDialog$Builder;)V

    return-object v0
.end method

.method putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 490
    if-eqz p3, :cond_0

    .line 491
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :cond_0
    return-void
.end method

.method public setApplicationName(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 374
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationName:Ljava/lang/String;

    .line 377
    return-object p0
.end method

.method abstract setBundleExtras(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public setFragment(Landroid/support/v4/app/Fragment;)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 389
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->fragment:Landroid/support/v4/app/Fragment;

    .line 392
    return-object p0
.end method

.method public setRequestCode(I)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    # invokes: Lcom/facebook/widget/FacebookDialog$PendingCall;->setRequestCode(I)V
    invoke-static {v0, p1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->access$000(Lcom/facebook/widget/FacebookDialog$PendingCall;I)V

    .line 363
    return-object p0
.end method

.method validate()V
    .locals 0

    .prologue
    .line 435
    return-void
.end method
