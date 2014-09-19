.class public Lcom/buffalostudios/aneutils/notifier/PushNotifier$IsGCMRegisteredOnServer;
.super Ljava/lang/Object;
.source "PushNotifier.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buffalostudios/aneutils/notifier/PushNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsGCMRegisteredOnServer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5
    .parameter "context"
    .parameter "args"

    .prologue
    .line 257
    #calls: Lcom/buffalostudios/aneutils/notifier/PushNotifier;->isGCMRegisteredOnServer(Lcom/adobe/fre/FREContext;)Z
    invoke-static {p1}, Lcom/buffalostudios/aneutils/notifier/PushNotifier;->access$2(Lcom/adobe/fre/FREContext;)Z

    move-result v2

    .line 259
    .local v2, result:Z
    const/4 v1, 0x0

    .line 261
    .local v1, resFreObject:Lcom/adobe/fre/FREObject;
    :try_start_0
    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 266
    :goto_0
    return-object v1

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "PushNotifier"

    const-string v4, "Thread Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
