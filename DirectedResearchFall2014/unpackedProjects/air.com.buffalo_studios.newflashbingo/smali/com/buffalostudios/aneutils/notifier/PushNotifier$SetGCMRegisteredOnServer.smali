.class public Lcom/buffalostudios/aneutils/notifier/PushNotifier$SetGCMRegisteredOnServer;
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
    name = "SetGCMRegisteredOnServer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 6
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 272
    const/4 v3, 0x0

    .line 274
    .local v3, "result":Z
    const/4 v2, 0x0

    .line 276
    .local v2, "resFreObject":Lcom/adobe/fre/FREObject;
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v1

    .line 277
    .local v1, "isRegistered":Z
    # invokes: Lcom/buffalostudios/aneutils/notifier/PushNotifier;->setGCMRegisteredOnServer(Lcom/adobe/fre/FREContext;Z)Z
    invoke-static {p1, v1}, Lcom/buffalostudios/aneutils/notifier/PushNotifier;->access$3(Lcom/adobe/fre/FREContext;Z)Z

    move-result v3

    .line 278
    invoke-static {v3}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 283
    .end local v1    # "isRegistered":Z
    :goto_0
    return-object v2

    .line 279
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "PushNotifier"

    const-string v5, "Thread Exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
