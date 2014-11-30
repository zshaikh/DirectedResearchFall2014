.class public abstract Lcom/gamesys/android/billing/common/AneActivity;
.super Landroid/app/Activity;
.source "AneActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gamesys/android/billing/common/AneActivity$AndroidInterfaceBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final MESSAGE_UPDATE_DIALOG_PERCENT_COMPLETE:I = 0x43a2

.field public static final MESSAGE_UPDATE_DIALOG_PERCENT_CURRENT:I = 0x43a0

.field public static final MESSAGE_UPDATE_DIALOG_PERCENT_MAX_ATTEMPT:I = 0x43a1

.field protected static asContext:Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;


# instance fields
.field private currentAttempt:I

.field private currentProgressValue:I

.field private progressHandler:Landroid/os/Handler;

.field private receiver:Lcom/gamesys/android/billing/common/AneActivity$AndroidInterfaceBroadcastReceiver;

.field protected spinner:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/gamesys/android/billing/common/AneActivity;->asContext:Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    iput v0, p0, Lcom/gamesys/android/billing/common/AneActivity;->currentAttempt:I

    .line 33
    iput v0, p0, Lcom/gamesys/android/billing/common/AneActivity;->currentProgressValue:I

    .line 40
    new-instance v0, Lcom/gamesys/android/billing/common/AneActivity$1;

    invoke-direct {v0, p0}, Lcom/gamesys/android/billing/common/AneActivity$1;-><init>(Lcom/gamesys/android/billing/common/AneActivity;)V

    iput-object v0, p0, Lcom/gamesys/android/billing/common/AneActivity;->progressHandler:Landroid/os/Handler;

    .line 20
    return-void
.end method

.method static synthetic access$0(Lcom/gamesys/android/billing/common/AneActivity;I)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/gamesys/android/billing/common/AneActivity;->setAutoProgress(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/gamesys/android/billing/common/AneActivity;I)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/gamesys/android/billing/common/AneActivity;->initProgressDialog(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/gamesys/android/billing/common/AneActivity;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/gamesys/android/billing/common/AneActivity;->currentProgressValue:I

    return v0
.end method

.method static synthetic access$3(Lcom/gamesys/android/billing/common/AneActivity;I)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/gamesys/android/billing/common/AneActivity;->currentProgressValue:I

    return-void
.end method

.method private initProgressDialog(I)V
    .locals 6
    .param p1, "maxAttempt"    # I

    .prologue
    const/4 v5, 0x0

    .line 108
    const-wide/high16 v1, 0x4000000000000000L

    int-to-double v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L

    sub-double/2addr v1, v3

    double-to-int v1, v1

    mul-int/lit16 v0, v1, 0x2710

    .line 109
    .local v0, "maxValue":I
    iget-object v1, p0, Lcom/gamesys/android/billing/common/AneActivity;->spinner:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/gamesys/android/billing/common/AneActivity;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 111
    iget-object v1, p0, Lcom/gamesys/android/billing/common/AneActivity;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 113
    :cond_0
    iput v5, p0, Lcom/gamesys/android/billing/common/AneActivity;->currentProgressValue:I

    .line 114
    return-void
.end method

.method private setAutoProgress(I)V
    .locals 8
    .param p1, "maxForAttempt"    # I

    .prologue
    .line 122
    const-wide/high16 v0, 0x4000000000000000L

    iget v2, p0, Lcom/gamesys/android/billing/common/AneActivity;->currentAttempt:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit16 v6, v0, 0x2710

    .line 123
    .local v6, "pmax":I
    new-instance v0, Lcom/gamesys/android/billing/common/AneActivity$3;

    add-int/lit8 v1, p1, -0x1e

    int-to-long v2, v1

    const-wide/16 v4, 0x64

    move-object v1, p0

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/gamesys/android/billing/common/AneActivity$3;-><init>(Lcom/gamesys/android/billing/common/AneActivity;JJII)V

    .line 139
    invoke-virtual {v0}, Lcom/gamesys/android/billing/common/AneActivity$3;->start()Landroid/os/CountDownTimer;

    .line 140
    iget v0, p0, Lcom/gamesys/android/billing/common/AneActivity;->currentAttempt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gamesys/android/billing/common/AneActivity;->currentAttempt:I

    .line 141
    return-void
.end method


# virtual methods
.method protected abstract getContextName()Ljava/lang/String;
.end method

.method protected handleNullAsContext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AS context is null in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", please restart the app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/AneActivity;->finish()V

    .line 149
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0, v2}, Lcom/gamesys/android/billing/common/AneActivity;->requestWindowFeature(I)Z

    .line 62
    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/AneActivity;->getContextName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->getContext(Ljava/lang/String;)Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/billing/common/AneActivity;->asContext:Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;

    .line 65
    new-instance v0, Lcom/gamesys/android/billing/common/AneActivity$AndroidInterfaceBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/gamesys/android/billing/common/AneActivity$AndroidInterfaceBroadcastReceiver;-><init>(Lcom/gamesys/android/billing/common/AneActivity;Lcom/gamesys/android/billing/common/AneActivity$AndroidInterfaceBroadcastReceiver;)V

    iput-object v0, p0, Lcom/gamesys/android/billing/common/AneActivity;->receiver:Lcom/gamesys/android/billing/common/AneActivity$AndroidInterfaceBroadcastReceiver;

    .line 66
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gamesys/android/billing/common/AneActivity;->spinner:Landroid/app/ProgressDialog;

    .line 67
    iget-object v0, p0, Lcom/gamesys/android/billing/common/AneActivity;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 68
    iget-object v0, p0, Lcom/gamesys/android/billing/common/AneActivity;->spinner:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/gamesys/android/billing/common/AneActivity;->spinner:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 70
    iget-object v0, p0, Lcom/gamesys/android/billing/common/AneActivity;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 71
    iget-object v0, p0, Lcom/gamesys/android/billing/common/AneActivity;->spinner:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/gamesys/android/billing/common/AneActivity$2;

    invoke-direct {v1, p0}, Lcom/gamesys/android/billing/common/AneActivity$2;-><init>(Lcom/gamesys/android/billing/common/AneActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 79
    invoke-virtual {p0, v2}, Lcom/gamesys/android/billing/common/AneActivity;->requestWindowFeature(I)Z

    .line 80
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 96
    sget-object v0, Lcom/gamesys/android/billing/common/AneActivity;->asContext:Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/gamesys/android/billing/common/AneActivity;->asContext:Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;

    iget-object v1, p0, Lcom/gamesys/android/billing/common/AneActivity;->receiver:Lcom/gamesys/android/billing/common/AneActivity$AndroidInterfaceBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 87
    sget-object v0, Lcom/gamesys/android/billing/common/AneActivity;->asContext:Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/gamesys/android/billing/common/AneActivity;->asContext:Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;

    iget-object v1, p0, Lcom/gamesys/android/billing/common/AneActivity;->receiver:Lcom/gamesys/android/billing/common/AneActivity$AndroidInterfaceBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->registerAutoCloseReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    :cond_0
    return-void
.end method
