.class public Lcom/buffalostudios/aneutils/notifier/LocalNotifier$ScheduleNotificationRepeating;
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
    name = "ScheduleNotificationRepeating"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 13
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v12, 0x0

    .line 205
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v1

    .line 206
    .local v1, "uid":I
    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v10

    double-to-long v2, v10

    .line 207
    .local v2, "firstTimeSeconds":J
    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v10

    double-to-long v4, v10

    .line 208
    .local v4, "thenEverySeconds":J
    const/4 v0, 0x3

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 209
    .local v6, "title":Ljava/lang/String;
    const/4 v0, 0x4

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v7

    .line 210
    .local v7, "message":Ljava/lang/String;
    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v8

    .local v8, "extraData":Ljava/lang/String;
    move-object v0, p1

    .line 211
    # invokes: Lcom/buffalostudios/aneutils/notifier/LocalNotifier;->scheduleNotificationRepeating(Lcom/adobe/fre/FREContext;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v8}, Lcom/buffalostudios/aneutils/notifier/LocalNotifier;->access$2(Lcom/adobe/fre/FREContext;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v12

    .line 217
    .end local v1    # "uid":I
    .end local v2    # "firstTimeSeconds":J
    .end local v4    # "thenEverySeconds":J
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "message":Ljava/lang/String;
    .end local v8    # "extraData":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 213
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 214
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "LocalNotifier"

    const-string v10, "Parse exception"

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v12

    .line 215
    goto :goto_0
.end method
