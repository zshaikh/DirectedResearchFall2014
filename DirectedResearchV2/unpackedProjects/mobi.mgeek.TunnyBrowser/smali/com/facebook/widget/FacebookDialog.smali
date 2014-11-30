.class public Lcom/facebook/widget/FacebookDialog;
.super Ljava/lang/Object;
.source "FacebookDialog.java"


# static fields
.field public static final COMPLETION_GESTURE_CANCEL:Ljava/lang/String; = "cancel"

.field private static final EXTRA_DIALOG_COMPLETE_KEY:Ljava/lang/String; = "com.facebook.platform.extra.DID_COMPLETE"

.field private static final EXTRA_DIALOG_COMPLETION_GESTURE_KEY:Ljava/lang/String; = "com.facebook.platform.extra.COMPLETION_GESTURE"

.field private static final EXTRA_DIALOG_COMPLETION_ID_KEY:Ljava/lang/String; = "com.facebook.platform.extra.POST_ID"

.field private static attachmentStore:Lcom/facebook/NativeAppCallAttachmentStore;


# instance fields
.field private activity:Landroid/app/Activity;

.field private appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

.field private fragment:Landroid/support/v4/app/Fragment;

.field private onPresentCallback:Lcom/facebook/widget/FacebookDialog$OnPresentCallback;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Lcom/facebook/widget/FacebookDialog$PendingCall;Lcom/facebook/widget/FacebookDialog$OnPresentCallback;)V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog;->activity:Landroid/app/Activity;

    .line 288
    iput-object p2, p0, Lcom/facebook/widget/FacebookDialog;->fragment:Landroid/support/v4/app/Fragment;

    .line 289
    iput-object p3, p0, Lcom/facebook/widget/FacebookDialog;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    .line 290
    iput-object p4, p0, Lcom/facebook/widget/FacebookDialog;->onPresentCallback:Lcom/facebook/widget/FacebookDialog$OnPresentCallback;

    .line 291
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Lcom/facebook/widget/FacebookDialog$PendingCall;Lcom/facebook/widget/FacebookDialog$OnPresentCallback;Lcom/facebook/widget/FacebookDialog$1;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/widget/FacebookDialog;-><init>(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Lcom/facebook/widget/FacebookDialog$PendingCall;Lcom/facebook/widget/FacebookDialog$OnPresentCallback;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-static {p0}, Lcom/facebook/widget/FacebookDialog;->getActionForFeatures(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/Iterable;)I
    .locals 1

    .prologue
    .line 45
    invoke-static {p0}, Lcom/facebook/widget/FacebookDialog;->getMinVersionForFeatures(Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Lcom/facebook/widget/FacebookDialog;->getProtocolVersionForNativeDialog(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/facebook/widget/FacebookDialog;->getEventName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/widget/FacebookDialog;->logDialogActivity(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Landroid/content/Context;Ljava/lang/Iterable;)Z
    .locals 1

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/facebook/widget/FacebookDialog;->handleCanPresent(Landroid/content/Context;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900()Lcom/facebook/NativeAppCallAttachmentStore;
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/facebook/widget/FacebookDialog;->getAttachmentStore()Lcom/facebook/NativeAppCallAttachmentStore;

    move-result-object v0

    return-object v0
.end method

.method public static varargs canPresentMessageDialog(Landroid/content/Context;[Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;)Z
    .locals 1

    .prologue
    .line 380
    sget-object v0, Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;->MESSAGE_DIALOG:Lcom/facebook/widget/FacebookDialog$MessageDialogFeature;

    invoke-static {v0, p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/widget/FacebookDialog;->handleCanPresent(Landroid/content/Context;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public static varargs canPresentOpenGraphActionDialog(Landroid/content/Context;[Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;)Z
    .locals 1

    .prologue
    .line 395
    sget-object v0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;->OG_ACTION_DIALOG:Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;

    invoke-static {v0, p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/widget/FacebookDialog;->handleCanPresent(Landroid/content/Context;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public static varargs canPresentOpenGraphMessageDialog(Landroid/content/Context;[Lcom/facebook/widget/FacebookDialog$OpenGraphMessageDialogFeature;)Z
    .locals 1

    .prologue
    .line 410
    sget-object v0, Lcom/facebook/widget/FacebookDialog$OpenGraphMessageDialogFeature;->OG_MESSAGE_DIALOG:Lcom/facebook/widget/FacebookDialog$OpenGraphMessageDialogFeature;

    invoke-static {v0, p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/widget/FacebookDialog;->handleCanPresent(Landroid/content/Context;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public static varargs canPresentShareDialog(Landroid/content/Context;[Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;)Z
    .locals 1

    .prologue
    .line 365
    sget-object v0, Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;->SHARE_DIALOG:Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    invoke-static {v0, p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/widget/FacebookDialog;->handleCanPresent(Landroid/content/Context;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method private static getActionForFeatures(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/facebook/widget/FacebookDialog$DialogFeature;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 439
    const/4 v0, 0x0

    .line 440
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/FacebookDialog$DialogFeature;

    .line 443
    invoke-interface {v0}, Lcom/facebook/widget/FacebookDialog$DialogFeature;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 446
    :cond_0
    return-object v0
.end method

.method private static getAttachmentStore()Lcom/facebook/NativeAppCallAttachmentStore;
    .locals 1

    .prologue
    .line 423
    sget-object v0, Lcom/facebook/widget/FacebookDialog;->attachmentStore:Lcom/facebook/NativeAppCallAttachmentStore;

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Lcom/facebook/NativeAppCallAttachmentStore;

    invoke-direct {v0}, Lcom/facebook/NativeAppCallAttachmentStore;-><init>()V

    sput-object v0, Lcom/facebook/widget/FacebookDialog;->attachmentStore:Lcom/facebook/NativeAppCallAttachmentStore;

    .line 426
    :cond_0
    sget-object v0, Lcom/facebook/widget/FacebookDialog;->attachmentStore:Lcom/facebook/NativeAppCallAttachmentStore;

    return-object v0
.end method

.method private static getEventName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 457
    const-string v0, "com.facebook.platform.protocol.PROTOCOL_ACTION"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 458
    const-string v1, "com.facebook.platform.extra.PHOTOS"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    .line 459
    invoke-static {v0, v1}, Lcom/facebook/widget/FacebookDialog;->getEventName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getEventName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 465
    const-string v0, "com.facebook.platform.action.request.FEED_DIALOG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    if-eqz p1, :cond_0

    const-string v0, "fb_dialogs_present_share_photo"

    .line 480
    :goto_0
    return-object v0

    .line 466
    :cond_0
    const-string v0, "fb_dialogs_present_share"

    goto :goto_0

    .line 469
    :cond_1
    const-string v0, "com.facebook.platform.action.request.MESSAGE_DIALOG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 470
    if-eqz p1, :cond_2

    const-string v0, "fb_dialogs_present_message_photo"

    goto :goto_0

    :cond_2
    const-string v0, "fb_dialogs_present_message"

    goto :goto_0

    .line 473
    :cond_3
    const-string v0, "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 474
    const-string v0, "fb_dialogs_present_share_og"

    goto :goto_0

    .line 475
    :cond_4
    const-string v0, "com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 476
    const-string v0, "fb_dialogs_present_message_og"

    goto :goto_0

    .line 478
    :cond_5
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "An unspecified action was presented"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getMinVersionForFeatures(Ljava/lang/Iterable;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/facebook/widget/FacebookDialog$DialogFeature;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 430
    const/high16 v0, -0x80000000

    .line 431
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/FacebookDialog$DialogFeature;

    .line 433
    invoke-interface {v0}, Lcom/facebook/widget/FacebookDialog$DialogFeature;->getMinVersion()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 435
    :cond_0
    return v1
.end method

.method public static getNativeDialogCompletionGesture(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    const-string v0, "com.facebook.platform.extra.COMPLETION_GESTURE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNativeDialogDidComplete(Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 255
    const-string v0, "com.facebook.platform.extra.DID_COMPLETE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getNativeDialogPostId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    const-string v0, "com.facebook.platform.extra.POST_ID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getProtocolVersionForNativeDialog(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 419
    invoke-static {p0, p1, p2}, Lcom/facebook/internal/NativeProtocol;->getLatestAvailableProtocolVersionForAction(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static handleActivityResult(Landroid/content/Context;Lcom/facebook/widget/FacebookDialog$PendingCall;ILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)Z
    .locals 2

    .prologue
    .line 333
    invoke-virtual {p1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestCode()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 334
    const/4 v0, 0x0

    .line 350
    :goto_0
    return v0

    .line 337
    :cond_0
    sget-object v0, Lcom/facebook/widget/FacebookDialog;->attachmentStore:Lcom/facebook/NativeAppCallAttachmentStore;

    if-eqz v0, :cond_1

    .line 338
    sget-object v0, Lcom/facebook/widget/FacebookDialog;->attachmentStore:Lcom/facebook/NativeAppCallAttachmentStore;

    invoke-virtual {p1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/facebook/NativeAppCallAttachmentStore;->cleanupAttachmentsForCall(Landroid/content/Context;Ljava/util/UUID;)V

    .line 341
    :cond_1
    if-eqz p4, :cond_2

    .line 342
    invoke-static {p3}, Lcom/facebook/internal/NativeProtocol;->isErrorResult(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 343
    invoke-static {p3}, Lcom/facebook/internal/NativeProtocol;->getErrorFromResult(Landroid/content/Intent;)Ljava/lang/Exception;

    move-result-object v0

    .line 344
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {p4, p1, v0, v1}, Lcom/facebook/widget/FacebookDialog$Callback;->onError(Lcom/facebook/widget/FacebookDialog$PendingCall;Ljava/lang/Exception;Landroid/os/Bundle;)V

    .line 350
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 346
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p4, p1, v0}, Lcom/facebook/widget/FacebookDialog$Callback;->onComplete(Lcom/facebook/widget/FacebookDialog$PendingCall;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private static handleCanPresent(Landroid/content/Context;Ljava/lang/Iterable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/facebook/widget/FacebookDialog$DialogFeature;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 414
    invoke-static {p1}, Lcom/facebook/widget/FacebookDialog;->getActionForFeatures(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/facebook/widget/FacebookDialog;->getMinVersionForFeatures(Ljava/lang/Iterable;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/facebook/widget/FacebookDialog;->getProtocolVersionForNativeDialog(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logDialogActivity(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 450
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/AppEventsLogger;

    move-result-object v0

    .line 451
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 452
    const-string v2, "fb_dialog_outcome"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 454
    return-void
.end method


# virtual methods
.method public present()Lcom/facebook/widget/FacebookDialog$PendingCall;
    .locals 4

    .prologue
    .line 302
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog;->fragment:Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v2}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/widget/FacebookDialog;->getEventName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Completed"

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/widget/FacebookDialog;->logDialogActivity(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog;->onPresentCallback:Lcom/facebook/widget/FacebookDialog$OnPresentCallback;

    if-eqz v0, :cond_0

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog;->onPresentCallback:Lcom/facebook/widget/FacebookDialog$OnPresentCallback;

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog;->activity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/facebook/widget/FacebookDialog$OnPresentCallback;->onPresent(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog;->fragment:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v2}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 318
    :goto_0
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    return-object v0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    new-instance v1, Lcom/facebook/FacebookException;

    invoke-direct {v1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v2}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
