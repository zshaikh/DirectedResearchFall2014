.class public Ldolphin/webkit/NotificationClient;
.super Ljava/lang/Object;
.source "NotificationClient.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p2, p0, Ldolphin/webkit/NotificationClient;->a:I

    .line 18
    iput-object p1, p0, Ldolphin/webkit/NotificationClient;->b:Landroid/content/Context;

    .line 19
    return-void
.end method

.method private getPermissionConformMsg()Ljava/lang/String;
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 39
    sget v0, Ldolphin/webkit/R$string;->notificationPermissionConfirm:I

    invoke-static {v0}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private release()V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    iput v0, p0, Ldolphin/webkit/NotificationClient;->a:I

    .line 46
    return-void
.end method

.method private showNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 25
    invoke-static {}, Ldolphin/webkit/WebKitResources;->getResourcesContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/NotificationManager;

    .line 29
    new-instance v0, Landroid/app/Notification;

    invoke-static {}, Ldolphin/webkit/WebKitResources;->getResourcesContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Ldolphin/webkit/R$drawable;->ic_notification:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    move-object v3, p4

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 32
    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 33
    invoke-virtual {v9, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 34
    return-void
.end method
