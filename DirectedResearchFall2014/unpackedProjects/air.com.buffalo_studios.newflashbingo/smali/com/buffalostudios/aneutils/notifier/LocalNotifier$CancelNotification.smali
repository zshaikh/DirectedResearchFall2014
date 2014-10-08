.class public Lcom/buffalostudios/aneutils/notifier/LocalNotifier$CancelNotification;
.super Ljava/lang/Object;
.source "LocalNotifier.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buffalostudios/aneutils/notifier/LocalNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CancelNotification"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v4, 0x0

    .line 172
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v1

    .line 173
    .local v1, "uid":I
    # invokes: Lcom/buffalostudios/aneutils/notifier/LocalNotifier;->cancelNotification(Lcom/adobe/fre/FREContext;I)V
    invoke-static {p1, v1}, Lcom/buffalostudios/aneutils/notifier/LocalNotifier;->access$0(Lcom/adobe/fre/FREContext;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 178
    .end local v1    # "uid":I
    :goto_0
    return-object v2

    .line 174
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LocalNotifier"

    const-string v3, "Parse exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 176
    goto :goto_0
.end method
