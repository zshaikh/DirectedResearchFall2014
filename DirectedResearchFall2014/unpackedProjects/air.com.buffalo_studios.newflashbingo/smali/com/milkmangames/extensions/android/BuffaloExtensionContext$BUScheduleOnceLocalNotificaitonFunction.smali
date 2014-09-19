.class Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUScheduleOnceLocalNotificaitonFunction;
.super Ljava/lang/Object;
.source "BuffaloExtensionContext.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/milkmangames/extensions/android/BuffaloExtensionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BUScheduleOnceLocalNotificaitonFunction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;


# direct methods
.method private constructor <init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;)V
    .locals 0
    .parameter

    .prologue
    .line 754
    iput-object p1, p0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUScheduleOnceLocalNotificaitonFunction;->this$0:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUScheduleOnceLocalNotificaitonFunction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 754
    invoke-direct {p0, p1}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUScheduleOnceLocalNotificaitonFunction;-><init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 11
    .parameter "context"
    .parameter "args"

    .prologue
    const/4 v10, 0x0

    .line 762
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v1

    .line 763
    .local v1, uid:I
    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v8

    double-to-long v2, v8

    .line 764
    .local v2, timeSeconds:J
    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 765
    .local v4, title:Ljava/lang/String;
    const/4 v0, 0x3

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 766
    .local v5, message:Ljava/lang/String;
    const/4 v0, 0x4

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 767
    .local v6, extraData:Ljava/lang/String;
    iget-object v0, p0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUScheduleOnceLocalNotificaitonFunction;->this$0:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;

    invoke-virtual/range {v0 .. v6}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->scheduleOnceLocalNotification(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v10

    .line 775
    .end local v1           #uid:I
    .end local v2           #timeSeconds:J
    .end local v4           #title:Ljava/lang/String;
    .end local v5           #message:Ljava/lang/String;
    .end local v6           #extraData:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 769
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 771
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "[BUExtension]"

    const-string v8, "Parse exception"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v10

    .line 772
    goto :goto_0
.end method
