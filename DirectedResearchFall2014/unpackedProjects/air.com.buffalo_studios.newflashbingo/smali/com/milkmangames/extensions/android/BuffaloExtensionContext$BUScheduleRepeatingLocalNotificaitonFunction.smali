.class Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUScheduleRepeatingLocalNotificaitonFunction;
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
    name = "BUScheduleRepeatingLocalNotificaitonFunction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;


# direct methods
.method private constructor <init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;)V
    .locals 0
    .parameter

    .prologue
    .line 779
    iput-object p1, p0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUScheduleRepeatingLocalNotificaitonFunction;->this$0:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUScheduleRepeatingLocalNotificaitonFunction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 779
    invoke-direct {p0, p1}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUScheduleRepeatingLocalNotificaitonFunction;-><init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 13
    .parameter "context"
    .parameter "args"

    .prologue
    const/4 v12, 0x0

    .line 787
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v1

    .line 788
    .local v1, uid:I
    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v10

    double-to-long v2, v10

    .line 789
    .local v2, firstTimeSeconds:J
    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v10

    double-to-long v4, v10

    .line 790
    .local v4, thenEverySeconds:J
    const/4 v0, 0x3

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 791
    .local v6, title:Ljava/lang/String;
    const/4 v0, 0x4

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v7

    .line 792
    .local v7, message:Ljava/lang/String;
    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v8

    .line 793
    .local v8, extraData:Ljava/lang/String;
    iget-object v0, p0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUScheduleRepeatingLocalNotificaitonFunction;->this$0:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;

    invoke-virtual/range {v0 .. v8}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->scheduleRepeatingLocalNotification(IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v12

    .line 801
    .end local v1           #uid:I
    .end local v2           #firstTimeSeconds:J
    .end local v4           #thenEverySeconds:J
    .end local v6           #title:Ljava/lang/String;
    .end local v7           #message:Ljava/lang/String;
    .end local v8           #extraData:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 795
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 797
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "[BUExtension]"

    const-string v10, "Parse exception"

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v12

    .line 798
    goto :goto_0
.end method
