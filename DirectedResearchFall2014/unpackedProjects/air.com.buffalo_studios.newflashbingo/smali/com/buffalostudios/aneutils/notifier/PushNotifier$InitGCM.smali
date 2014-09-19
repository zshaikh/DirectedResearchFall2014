.class public Lcom/buffalostudios/aneutils/notifier/PushNotifier$InitGCM;
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
    name = "InitGCM"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4
    .parameter "context"
    .parameter "args"

    .prologue
    .line 306
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, GCMSender:Ljava/lang/String;
    #calls: Lcom/buffalostudios/aneutils/notifier/PushNotifier;->initGCM(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/buffalostudios/aneutils/notifier/PushNotifier;->access$5(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .end local v0           #GCMSender:Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 308
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 309
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "PushNotifier"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
