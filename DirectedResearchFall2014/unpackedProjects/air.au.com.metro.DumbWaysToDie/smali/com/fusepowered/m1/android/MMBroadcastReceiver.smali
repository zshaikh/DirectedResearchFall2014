.class public Lcom/fusepowered/m1/android/MMBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MMBroadcastReceiver.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACTION_AD_SINGLE_TAP:Ljava/lang/String; = "millennialmedia.action.ACTION_AD_SINGLE_TAP"

.field public static final ACTION_DISPLAY_STARTED:Ljava/lang/String; = "millennialmedia.action.ACTION_DISPLAY_STARTED"

.field public static final ACTION_FETCH_FAILED:Ljava/lang/String; = "millennialmedia.action.ACTION_FETCH_FAILED"

.field public static final ACTION_FETCH_STARTED_CACHING:Ljava/lang/String; = "millennialmedia.action.ACTION_FETCH_STARTED_CACHING"

.field public static final ACTION_FETCH_SUCCEEDED:Ljava/lang/String; = "millennialmedia.action.ACTION_FETCH_SUCCEEDED"

.field public static final ACTION_GETAD_FAILED:Ljava/lang/String; = "millennialmedia.action.ACTION_GETAD_FAILED"

.field public static final ACTION_GETAD_SUCCEEDED:Ljava/lang/String; = "millennialmedia.action.ACTION_GETAD_SUCCEEDED"

.field public static final ACTION_INTENT_STARTED:Ljava/lang/String; = "millennialmedia.action.ACTION_INTENT_STARTED"

.field public static final ACTION_OVERLAY_CLOSED:Ljava/lang/String; = "millennialmedia.action.ACTION_OVERLAY_CLOSED"

.field public static final ACTION_OVERLAY_OPENED:Ljava/lang/String; = "millennialmedia.action.ACTION_OVERLAY_OPENED"

.field public static final ACTION_OVERLAY_TAP:Ljava/lang/String; = "millennialmedia.action.ACTION_OVERLAY_TAP"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CATEGORY_SDK:Ljava/lang/String; = "millennialmedia.category.CATEGORY_SDK"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static createIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 48
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "millennialmedia.category.CATEGORY_SDK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 49
    const-string v1, "millennialmedia.action.ACTION_DISPLAY_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    const-string v1, "millennialmedia.action.ACTION_FETCH_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    const-string v1, "millennialmedia.action.ACTION_FETCH_SUCCEEDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    const-string v1, "millennialmedia.action.ACTION_FETCH_STARTED_CACHING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string v1, "millennialmedia.action.ACTION_GETAD_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string v1, "millennialmedia.action.ACTION_GETAD_SUCCEEDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string v1, "millennialmedia.action.ACTION_INTENT_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v1, "millennialmedia.action.ACTION_OVERLAY_CLOSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v1, "millennialmedia.action.ACTION_OVERLAY_OPENED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v1, "millennialmedia.action.ACTION_OVERLAY_TAP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v1, "millennialmedia.action.ACTION_AD_SINGLE_TAP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    return-object v0
.end method


# virtual methods
.method public displayStarted(Lcom/fusepowered/m1/android/MMAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/fusepowered/m1/android/MMAd;

    .prologue
    .line 222
    const-string v0, "Millennial Media display started."

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public fetchFailure(Lcom/fusepowered/m1/android/MMAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/fusepowered/m1/android/MMAd;

    .prologue
    .line 211
    const-string v0, "Millennial Media fetch failed."

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public fetchFinishedCaching(Lcom/fusepowered/m1/android/MMAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/fusepowered/m1/android/MMAd;

    .prologue
    .line 200
    const-string v0, "Millennial Media fetch finished caching."

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public fetchStartedCaching(Lcom/fusepowered/m1/android/MMAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/fusepowered/m1/android/MMAd;

    .prologue
    .line 189
    const-string v0, "Millennial Media fetch started caching."

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public getAdFailure(Lcom/fusepowered/m1/android/MMAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/fusepowered/m1/android/MMAd;

    .prologue
    .line 142
    const-string v0, "Millennial Media ad Failure."

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public getAdSuccess(Lcom/fusepowered/m1/android/MMAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/fusepowered/m1/android/MMAd;

    .prologue
    .line 131
    const-string v0, "Millennial Media ad Success."

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public intentStarted(Lcom/fusepowered/m1/android/MMAd;Ljava/lang/String;)V
    .locals 2
    .param p1, "ad"    # Lcom/fusepowered/m1/android/MMAd;
    .param p2, "intent"    # Ljava/lang/String;

    .prologue
    .line 175
    if-eqz p2, :cond_0

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Millennial Media started intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 179
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v8, -0x4

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "action":Ljava/lang/String;
    const-string v7, "packageName"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, "packageName":Ljava/lang/String;
    const-string v7, "internalId"

    invoke-virtual {p2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 69
    .local v4, "internalId":J
    const/4 v2, 0x0

    .line 70
    .local v2, "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    const/4 v1, 0x0

    .line 71
    .local v1, "ad":Lcom/fusepowered/m1/android/MMAd;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    cmp-long v7, v4, v8

    if-eqz v7, :cond_2

    .line 78
    invoke-static {v4, v5}, Lcom/fusepowered/m1/android/MMAdImplController;->getAdImplWithId(J)Lcom/fusepowered/m1/android/MMAdImpl;

    move-result-object v2

    .line 79
    if-eqz v2, :cond_2

    .line 81
    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMAdImpl;->getCallingAd()Lcom/fusepowered/m1/android/MMAd;

    move-result-object v1

    .line 85
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " @@ Intent - Ad in receiver = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v1, :cond_3

    const-string v8, " null"

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fusepowered/m1/android/MMSDK$Log;->v(Ljava/lang/String;)V

    .line 86
    const-string v7, "millennialmedia.action.ACTION_OVERLAY_OPENED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 88
    invoke-virtual {p0, v1}, Lcom/fusepowered/m1/android/MMBroadcastReceiver;->overlayOpened(Lcom/fusepowered/m1/android/MMAd;)V

    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 89
    :cond_4
    const-string v7, "millennialmedia.action.ACTION_OVERLAY_CLOSED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 91
    invoke-virtual {p0, v1}, Lcom/fusepowered/m1/android/MMBroadcastReceiver;->overlayClosed(Lcom/fusepowered/m1/android/MMAd;)V

    goto :goto_0

    .line 92
    :cond_5
    const-string v7, "millennialmedia.action.ACTION_OVERLAY_TAP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 94
    invoke-virtual {p0, v1}, Lcom/fusepowered/m1/android/MMBroadcastReceiver;->overlayTap(Lcom/fusepowered/m1/android/MMAd;)V

    goto :goto_0

    .line 95
    :cond_6
    const-string v7, "millennialmedia.action.ACTION_AD_SINGLE_TAP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 97
    invoke-virtual {p0, v1}, Lcom/fusepowered/m1/android/MMBroadcastReceiver;->onSingleTap(Lcom/fusepowered/m1/android/MMAd;)V

    goto :goto_0

    .line 98
    :cond_7
    const-string v7, "millennialmedia.action.ACTION_DISPLAY_STARTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 100
    invoke-virtual {p0, v1}, Lcom/fusepowered/m1/android/MMBroadcastReceiver;->displayStarted(Lcom/fusepowered/m1/android/MMAd;)V

    goto :goto_0

    .line 101
    :cond_8
    const-string v7, "millennialmedia.action.ACTION_FETCH_FAILED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 103
    invoke-virtual {p0, v1}, Lcom/fusepowered/m1/android/MMBroadcastReceiver;->fetchFailure(Lcom/fusepowered/m1/android/MMAd;)V

    goto :goto_0

    .line 104
    :cond_9
    const-string v7, "millennialmedia.action.ACTION_FETCH_SUCCEEDED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 106
    invoke-virtual {p0, v1}, Lcom/fusepowered/m1/android/MMBroadcastReceiver;->fetchFinishedCaching(Lcom/fusepowered/m1/android/MMAd;)V

    goto/16 :goto_0

    .line 107
    :cond_a
    const-string v7, "millennialmedia.action.ACTION_FETCH_STARTED_CACHING"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 109
    invoke-virtual {p0, v1}, Lcom/fusepowered/m1/android/MMBroadcastReceiver;->fetchStartedCaching(Lcom/fusepowered/m1/android/MMAd;)V

    goto/16 :goto_0

    .line 110
    :cond_b
    const-string v7, "millennialmedia.action.ACTION_GETAD_FAILED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 112
    invoke-virtual {p0, v1}, Lcom/fusepowered/m1/android/MMBroadcastReceiver;->getAdFailure(Lcom/fusepowered/m1/android/MMAd;)V

    goto/16 :goto_0

    .line 113
    :cond_c
    const-string v7, "millennialmedia.action.ACTION_GETAD_SUCCEEDED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 115
    invoke-virtual {p0, v1}, Lcom/fusepowered/m1/android/MMBroadcastReceiver;->getAdSuccess(Lcom/fusepowered/m1/android/MMAd;)V

    goto/16 :goto_0

    .line 116
    :cond_d
    const-string v7, "millennialmedia.action.ACTION_INTENT_STARTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 118
    const-string v7, "intentType"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "info":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/fusepowered/m1/android/MMBroadcastReceiver;->intentStarted(Lcom/fusepowered/m1/android/MMAd;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onSingleTap(Lcom/fusepowered/m1/android/MMAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/fusepowered/m1/android/MMAd;

    .prologue
    .line 242
    const-string v0, "Millennial Media ad Tap."

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public overlayClosed(Lcom/fusepowered/m1/android/MMAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/fusepowered/m1/android/MMAd;

    .prologue
    .line 164
    const-string v0, "Millennial Media overlay closed."

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public overlayOpened(Lcom/fusepowered/m1/android/MMAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/fusepowered/m1/android/MMAd;

    .prologue
    .line 153
    const-string v0, "Millennial Media overlay opened."

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public overlayTap(Lcom/fusepowered/m1/android/MMAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/fusepowered/m1/android/MMAd;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 231
    const-string v0, "Millennial Media overlay Tap."

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 232
    return-void
.end method
