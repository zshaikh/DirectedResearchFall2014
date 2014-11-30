.class public Lcom/fusepowered/push/FuseGCMBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FuseGCMBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GCMBroadcastReceiver"

.field private static mReceiverSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fusepowered/push/FuseGCMBroadcastReceiver;->mReceiverSet:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static getDefaultIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".GCMIntentService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "className":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method protected getGCMIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-static {p1}, Lcom/fusepowered/push/FuseGCMBroadcastReceiver;->getDefaultIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const-string v5, "GCMBroadcastReceiver"

    .line 43
    const-string v2, "GCMBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sget-boolean v2, Lcom/fusepowered/push/FuseGCMBroadcastReceiver;->mReceiverSet:Z

    if-nez v2, :cond_0

    .line 46
    const/4 v2, 0x1

    sput-boolean v2, Lcom/fusepowered/push/FuseGCMBroadcastReceiver;->mReceiverSet:Z

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "myClass":Ljava/lang/String;
    const-class v2, Lcom/fusepowered/push/FuseGCMBroadcastReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    invoke-static {v1}, Lcom/fusepowered/push/FuseGCMRegistrar;->setRetryReceiverClassName(Ljava/lang/String;)V

    .line 52
    .end local v1    # "myClass":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fusepowered/push/FuseGCMBroadcastReceiver;->getGCMIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "className":Ljava/lang/String;
    const-string v2, "GCMBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GCM IntentService class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {p1, p2, v0}, Lcom/fusepowered/push/FuseGCMBaseIntentService;->runIntentInService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 56
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v4, v4}, Lcom/fusepowered/push/FuseGCMBroadcastReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 57
    return-void
.end method
