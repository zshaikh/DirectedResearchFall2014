.class public Lcom/buffalostudios/aneutils/notifier/LocalNotifier$ScheduleNotification;
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
    name = "ScheduleNotification"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 11
    .parameter "context"
    .parameter "args"

    .prologue
    const/4 v10, 0x0

    .line 186
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v1

    .line 187
    .local v1, uid:I
    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v8

    double-to-long v2, v8

    .line 188
    .local v2, timeSeconds:J
    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, title:Ljava/lang/String;
    const/4 v0, 0x3

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, message:Ljava/lang/String;
    const/4 v0, 0x4

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    .local v6, extraData:Ljava/lang/String;
    move-object v0, p1

    .line 191
    #calls: Lcom/buffalostudios/aneutils/notifier/LocalNotifier;->scheduleNotification(Lcom/adobe/fre/FREContext;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/buffalostudios/aneutils/notifier/LocalNotifier;->access$1(Lcom/adobe/fre/FREContext;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v10

    .line 197
    .end local v1           #uid:I
    .end local v2           #timeSeconds:J
    .end local v4           #title:Ljava/lang/String;
    .end local v5           #message:Ljava/lang/String;
    .end local v6           #extraData:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 193
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 194
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "LocalNotifier"

    const-string v8, "Parse exception"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v10

    .line 195
    goto :goto_0
.end method
