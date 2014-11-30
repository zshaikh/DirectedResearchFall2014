.class public Lcom/gamesys/android/social/facebook/ane/FacebookContext;
.super Lcom/gamesys/android/common/tools/fwk/AbstractContext;
.source "FacebookContext.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$gamesys$android$social$facebook$fwk$FBInterfaceAction:[I = null

.field public static final FB_APP_ID_KEY:Ljava/lang/String; = "com.gamesys.android.facebook.ane.FB_APP_ID_KEY"

.field public static final INTENT_ACTION_AUTO_CLOSE:Ljava/lang/String; = "com.gamesys.android.facebook.ane.INTENT_ACTION_AUTO_CLOSE"

.field public static final INTENT_LOGIN_AND_PERFORM_ACTIOM:Ljava/lang/String; = "com.gamesys.android.facebook.ane.INTENT_LOGIN_AND_PERFORM_ACTIOM"

.field public static final PARAM_KEY_PERMISSION:Ljava/lang/String; = "com.gamesys.android.facebook.ane.PARAM_KEY_PERMISSION"

.field private static final TAG:Ljava/lang/String;

.field public static tryLogin:Z


# instance fields
.field private actionsToDo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gamesys/android/social/facebook/fwk/FBAction;",
            ">;"
        }
    .end annotation
.end field

.field private broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private cdl:Ljava/util/concurrent/CountDownLatch;

.field private currentDialog:Lcom/facebook/widget/WebDialog;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gamesys/android/common/tools/fwk/IStatusEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private statusCallback:Lcom/gamesys/android/social/facebook/fwk/SessionStatusCallback;

.field private unitTestingFlag:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$gamesys$android$social$facebook$fwk$FBInterfaceAction()[I
    .locals 3

    .prologue
    .line 30
    sget-object v0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->$SWITCH_TABLE$com$gamesys$android$social$facebook$fwk$FBInterfaceAction:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->values()[Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->AUTO_CLOSE:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    invoke-virtual {v1}, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->FEED_DIALOG:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    invoke-virtual {v1}, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->LOGIN:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    invoke-virtual {v1}, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->REQUEST_DIALOG:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    invoke-virtual {v1}, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->$SWITCH_TABLE$com$gamesys$android$social$facebook$fwk$FBInterfaceAction:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->TAG:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->tryLogin:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "extensionIdentifier"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0, p1}, Lcom/gamesys/android/common/tools/fwk/AbstractContext;-><init>(Ljava/lang/String;)V

    .line 54
    iput-object v2, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->actionsToDo:Ljava/util/List;

    .line 57
    iput-object v2, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->currentDialog:Lcom/facebook/widget/WebDialog;

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->listeners:Ljava/util/List;

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->unitTestingFlag:Z

    .line 304
    iput-object v2, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->cdl:Ljava/util/concurrent/CountDownLatch;

    .line 67
    new-instance v0, Lcom/gamesys/android/social/facebook/fwk/SessionStatusCallback;

    invoke-direct {v0, p0}, Lcom/gamesys/android/social/facebook/fwk/SessionStatusCallback;-><init>(Lcom/gamesys/android/social/facebook/ane/FacebookContext;)V

    iput-object v0, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->statusCallback:Lcom/gamesys/android/social/facebook/fwk/SessionStatusCallback;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->actionsToDo:Ljava/util/List;

    .line 69
    return-void
.end method

.method static synthetic access$1(Lcom/gamesys/android/social/facebook/ane/FacebookContext;Lcom/facebook/widget/WebDialog;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->currentDialog:Lcom/facebook/widget/WebDialog;

    return-void
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/gamesys/android/social/facebook/ane/FacebookContext;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->createEventBodyfromRequestBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addLoginIfNedded(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 217
    move-object v0, p1

    .line 218
    .local v0, "ab":Landroid/os/Bundle;
    if-nez p1, :cond_0

    .line 219
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "ab":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 222
    .restart local v0    # "ab":Landroid/os/Bundle;
    :cond_0
    new-instance v1, Lcom/gamesys/android/social/facebook/fwk/FBAction;

    sget-object v2, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->LOGIN:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    invoke-direct {v1, v2, v0}, Lcom/gamesys/android/social/facebook/fwk/FBAction;-><init>(Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;Landroid/os/Bundle;)V

    .line 223
    .local v1, "loginAction":Lcom/gamesys/android/social/facebook/fwk/FBAction;
    iget-object v2, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->actionsToDo:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 224
    sget-object v2, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Enqueuing extra "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->LOGIN:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    iget-object v4, v4, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " action"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v2, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->actionsToDo:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_1
    return-void
.end method

.method private closeAndroidInterfaceActivity()V
    .locals 3

    .prologue
    .line 111
    sget-object v1, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->TAG:Ljava/lang/String;

    const-string v2, "Closing AndroidFBInterface..."

    invoke-static {v1, v2}, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->isUnitTesting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 114
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.gamesys.android.facebook.ane.INTENT_ACTION_AUTO_CLOSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-direct {p0}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getBroadcastManager()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 117
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private createEventBodyfromRequestBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 439
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    .line 440
    const-string v3, "\"request\": \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "request"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    const-string v3, "\"to\": ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x32

    if-lt v0, v3, :cond_2

    .line 455
    :cond_0
    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .end local v0    # "i":I
    :cond_1
    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 445
    .restart local v0    # "i":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "to["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, "to":Ljava/lang/String;
    if-lez v0, :cond_3

    if-eqz v2, :cond_3

    .line 447
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :cond_3
    if-eqz v2, :cond_0

    .line 450
    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private enqueueAction(Landroid/os/Bundle;Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;)V
    .locals 4
    .param p1, "parameters"    # Landroid/os/Bundle;
    .param p2, "action"    # Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    .prologue
    .line 289
    sget-object v1, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Enqueuing : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-boolean v1, p2, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->loginRequired:Z

    if-eqz v1, :cond_0

    .line 291
    invoke-direct {p0, p1}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->addLoginIfNedded(Landroid/os/Bundle;)V

    .line 293
    :cond_0
    new-instance v0, Lcom/gamesys/android/social/facebook/fwk/FBAction;

    invoke-direct {v0, p2, p1}, Lcom/gamesys/android/social/facebook/fwk/FBAction;-><init>(Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;Landroid/os/Bundle;)V

    .line 294
    .local v0, "a":Lcom/gamesys/android/social/facebook/fwk/FBAction;
    iget-object v1, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->actionsToDo:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    return-void
.end method

.method private executeAction(Landroid/os/Bundle;Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;)V
    .locals 5
    .param p1, "parameters"    # Landroid/os/Bundle;
    .param p2, "action"    # Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    .prologue
    const/4 v4, 0x1

    .line 156
    move-object v1, p1

    .line 157
    .local v1, "params":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 158
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "params":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 160
    .restart local v1    # "params":Landroid/os/Bundle;
    :cond_0
    iget-object v2, p2, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->value:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 163
    invoke-virtual {p0}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->isUnitTesting()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    const-string v2, "FLAG_UNIT_TESTING"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 167
    :cond_1
    invoke-static {}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->$SWITCH_TABLE$com$gamesys$android$social$facebook$fwk$FBInterfaceAction()[I

    move-result-object v2

    invoke-virtual {p2}, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 187
    :goto_0
    :pswitch_0
    return-void

    .line 172
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->executeActionFeedDialog(Landroid/os/Bundle;)V

    goto :goto_0

    .line 175
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/gamesys/android/social/facebook/AndroidFBInterface;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 177
    sput-boolean v4, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->tryLogin:Z

    .line 178
    invoke-virtual {p0}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 181
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->executeActionRequestDialog(Landroid/os/Bundle;)V

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private executeActionFeedDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 334
    sget-object v0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->TAG:Ljava/lang/String;

    const-string v1, "Opening feed dialog..."

    invoke-static {v0, v1}, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v0, "com.gamesys.android.facebook.ane.FB_APP_ID_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 338
    new-instance v0, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;

    invoke-virtual {p0}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;-><init>(Landroid/content/Context;Lcom/facebook/Session;Landroid/os/Bundle;)V

    new-instance v1, Lcom/gamesys/android/social/facebook/ane/FacebookContext$1;

    invoke-direct {v1, p0}, Lcom/gamesys/android/social/facebook/ane/FacebookContext$1;-><init>(Lcom/gamesys/android/social/facebook/ane/FacebookContext;)V

    invoke-virtual {v0, v1}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;

    .line 368
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v0

    .line 338
    iput-object v0, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->currentDialog:Lcom/facebook/widget/WebDialog;

    .line 369
    iget-object v0, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->currentDialog:Lcom/facebook/widget/WebDialog;

    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->show()V

    .line 370
    return-void
.end method

.method private executeActionRequestDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 383
    sget-object v0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->TAG:Ljava/lang/String;

    const-string v1, "Opening request dialog..."

    invoke-static {v0, v1}, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v0, "frictionless"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 385
    const-string v0, "com.gamesys.android.facebook.ane.FB_APP_ID_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 388
    new-instance v0, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;

    invoke-virtual {p0}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;-><init>(Landroid/content/Context;Lcom/facebook/Session;Landroid/os/Bundle;)V

    .line 389
    new-instance v1, Lcom/gamesys/android/social/facebook/ane/FacebookContext$2;

    invoke-direct {v1, p0}, Lcom/gamesys/android/social/facebook/ane/FacebookContext$2;-><init>(Lcom/gamesys/android/social/facebook/ane/FacebookContext;)V

    .line 388
    invoke-virtual {v0, v1}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;

    .line 422
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v0

    .line 388
    iput-object v0, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->currentDialog:Lcom/facebook/widget/WebDialog;

    .line 423
    iget-object v0, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->currentDialog:Lcom/facebook/widget/WebDialog;

    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->show()V

    .line 424
    return-void
.end method

.method private executeNextAction()V
    .locals 6

    .prologue
    .line 244
    const/4 v1, 0x1

    .line 247
    .local v1, "performAction":Z
    :cond_0
    const/4 v0, 0x0

    .line 248
    .local v0, "a":Lcom/gamesys/android/social/facebook/fwk/FBAction;
    iget-object v3, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->actionsToDo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 249
    iget-object v3, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->actionsToDo:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "a":Lcom/gamesys/android/social/facebook/fwk/FBAction;
    check-cast v0, Lcom/gamesys/android/social/facebook/fwk/FBAction;

    .line 251
    .restart local v0    # "a":Lcom/gamesys/android/social/facebook/fwk/FBAction;
    :cond_1
    const/4 v1, 0x1

    .line 252
    if-eqz v0, :cond_6

    .line 253
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    .line 255
    .local v2, "session":Lcom/facebook/Session;
    iget-object v3, v0, Lcom/gamesys/android/social/facebook/fwk/FBAction;->actionToDo:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    sget-object v4, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->LOGIN:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    if-ne v3, v4, :cond_3

    .line 256
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/facebook/Session;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 257
    const/4 v1, 0x0

    .line 270
    :cond_2
    :goto_0
    if-eqz v1, :cond_5

    .line 271
    sget-object v3, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Performing : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/gamesys/android/social/facebook/fwk/FBAction;->actionToDo:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    iget-object v5, v5, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v3, v0, Lcom/gamesys/android/social/facebook/fwk/FBAction;->parameters:Landroid/os/Bundle;

    iget-object v4, v0, Lcom/gamesys/android/social/facebook/fwk/FBAction;->actionToDo:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    invoke-direct {p0, v3, v4}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->executeAction(Landroid/os/Bundle;Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;)V

    .line 279
    .end local v2    # "session":Lcom/facebook/Session;
    :goto_1
    if-eqz v1, :cond_0

    .line 280
    return-void

    .line 259
    .restart local v2    # "session":Lcom/facebook/Session;
    :cond_3
    iget-object v3, v0, Lcom/gamesys/android/social/facebook/fwk/FBAction;->actionToDo:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    iget-boolean v3, v3, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->loginRequired:Z

    if-eqz v3, :cond_2

    .line 261
    if-nez v2, :cond_4

    .line 262
    const/4 v1, 0x0

    .line 263
    const-string v3, "com.gamesys.android.ane.fb.SESSION_CLOSED_LOGIN_FAILED"

    const-string v4, "com.gamesys.android.ane.fb.LEVEL_CLOSED"

    invoke-virtual {p0, v3, v4}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_4
    invoke-virtual {v2}, Lcom/facebook/Session;->isOpened()Z

    move-result v3

    if-nez v3, :cond_2

    .line 265
    const/4 v1, 0x0

    .line 266
    invoke-virtual {v2}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/SessionState;->getAndroidASCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/SessionState;->getAndroidASLevel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :cond_5
    sget-object v3, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No Need/Impossible to perform : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/gamesys/android/social/facebook/fwk/FBAction;->actionToDo:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    iget-object v5, v5, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 277
    .end local v2    # "session":Lcom/facebook/Session;
    :cond_6
    invoke-direct {p0}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->closeAndroidInterfaceActivity()V

    goto :goto_1
.end method

.method private getBroadcastManager()Landroid/support/v4/content/LocalBroadcastManager;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->TAG:Ljava/lang/String;

    const-string v1, "dispose"

    invoke-static {v0, v1}, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public emulateDialogUserCancelBtn()V
    .locals 3

    .prologue
    .line 427
    iget-object v0, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->currentDialog:Lcom/facebook/widget/WebDialog;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->currentDialog:Lcom/facebook/widget/WebDialog;

    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->getOnCompleteListener()Lcom/facebook/widget/WebDialog$OnCompleteListener;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v2}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/facebook/widget/WebDialog$OnCompleteListener;->onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 430
    :cond_0
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    sget-object v1, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->TAG:Ljava/lang/String;

    const-string v2, "getFunctions"

    invoke-static {v1, v2}, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "login"

    new-instance v2, Lcom/gamesys/android/social/facebook/ane/FBAuthenticateFunction;

    invoke-direct {v2}, Lcom/gamesys/android/social/facebook/ane/FBAuthenticateFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "logout"

    new-instance v2, Lcom/gamesys/android/social/facebook/ane/FBLogoutFunction;

    invoke-direct {v2}, Lcom/gamesys/android/social/facebook/ane/FBLogoutFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "state.query"

    new-instance v2, Lcom/gamesys/android/social/facebook/ane/FBQueryStateFunction;

    invoke-direct {v2}, Lcom/gamesys/android/social/facebook/ane/FBQueryStateFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "state.isLogged"

    new-instance v2, Lcom/gamesys/android/social/facebook/ane/FBIsLoggedInFunction;

    invoke-direct {v2}, Lcom/gamesys/android/social/facebook/ane/FBIsLoggedInFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "dialog.feed"

    new-instance v2, Lcom/gamesys/android/social/facebook/ane/FBFeedDialogFunction;

    invoke-direct {v2}, Lcom/gamesys/android/social/facebook/ane/FBFeedDialogFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "dialog.request"

    new-instance v2, Lcom/gamesys/android/social/facebook/ane/FBRequestDialogFunction;

    invoke-direct {v2}, Lcom/gamesys/android/social/facebook/ane/FBRequestDialogFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "setDebug"

    new-instance v2, Lcom/gamesys/android/social/facebook/ane/FBEnableDebugFunction;

    invoke-direct {v2}, Lcom/gamesys/android/social/facebook/ane/FBEnableDebugFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-object v0
.end method

.method public final getStatusCallback()Lcom/gamesys/android/social/facebook/fwk/SessionStatusCallback;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->statusCallback:Lcom/gamesys/android/social/facebook/fwk/SessionStatusCallback;

    return-object v0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyActionDone()V
    .locals 2

    .prologue
    .line 312
    sget-object v0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->TAG:Ljava/lang/String;

    const-string v1, "Context notified : action is over"

    invoke-static {v0, v1}, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v0, "com.gamesys.android.ane.CODE_INTERNAL_ACTION_DONE"

    const-string v1, "com.gamesys.android.ane.LEVEL_INTERNAL"

    invoke-virtual {p0, v0, v1}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->cdl:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->cdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 319
    :cond_0
    invoke-direct {p0}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->executeNextAction()V

    .line 320
    return-void
.end method

.method public performFeedDialogAction(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 208
    sget-object v0, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->FEED_DIALOG:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    invoke-direct {p0, p1, v0}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->enqueueAction(Landroid/os/Bundle;Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;)V

    .line 209
    invoke-direct {p0}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->executeNextAction()V

    .line 210
    return-void
.end method

.method public performLoginAction(Landroid/os/Bundle;[Ljava/lang/String;)V
    .locals 1
    .param p1, "parameters"    # Landroid/os/Bundle;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 196
    const-string v0, "com.gamesys.android.facebook.ane.PARAM_KEY_PERMISSION"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 197
    sget-object v0, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->LOGIN:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    invoke-direct {p0, p1, v0}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->enqueueAction(Landroid/os/Bundle;Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;)V

    .line 198
    invoke-direct {p0}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->executeNextAction()V

    .line 199
    return-void
.end method

.method public performRequestDialogAction(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 236
    sget-object v0, Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;->REQUEST_DIALOG:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    invoke-direct {p0, p1, v0}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->enqueueAction(Landroid/os/Bundle;Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;)V

    .line 237
    invoke-direct {p0}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->executeNextAction()V

    .line 238
    return-void
.end method

.method public registerAutoCloseReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.gamesys.android.facebook.ane.INTENT_ACTION_AUTO_CLOSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getBroadcastManager()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 128
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getBroadcastManager()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 137
    return-void
.end method
