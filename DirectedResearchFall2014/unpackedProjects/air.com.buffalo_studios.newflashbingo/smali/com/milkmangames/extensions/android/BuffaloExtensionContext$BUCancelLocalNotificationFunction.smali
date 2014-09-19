.class Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUCancelLocalNotificationFunction;
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
    name = "BUCancelLocalNotificationFunction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;


# direct methods
.method private constructor <init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;)V
    .locals 0
    .parameter

    .prologue
    .line 735
    iput-object p1, p0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUCancelLocalNotificationFunction;->this$0:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUCancelLocalNotificationFunction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 735
    invoke-direct {p0, p1}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUCancelLocalNotificationFunction;-><init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5
    .parameter "context"
    .parameter "args"

    .prologue
    const/4 v4, 0x0

    .line 742
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v1

    .line 743
    .local v1, uid:I
    iget-object v2, p0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$BUCancelLocalNotificationFunction;->this$0:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;

    invoke-virtual {v2, v1}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->cancelLocalNotification(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 750
    .end local v1           #uid:I
    :goto_0
    return-object v2

    .line 745
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 747
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "[BUExtension]"

    const-string v3, "Parse exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 748
    goto :goto_0
.end method
