.class public Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;
.super Ljava/lang/Object;
.source "PendingUpload.java"


# instance fields
.field private final data:[B

.field private final description:Ljava/lang/String;

.field private final saveTime:Ljava/util/Date;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 17
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;-><init>([BLjava/lang/String;Ljava/util/Date;)V

    .line 18
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/util/Date;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "saveTime"    # Ljava/util/Date;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;->data:[B

    .line 22
    iput-object p2, p0, Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;->description:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;->saveTime:Ljava/util/Date;

    .line 24
    return-void
.end method


# virtual methods
.method public final getData()[B
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;->data:[B

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getSaveTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;->saveTime:Ljava/util/Date;

    return-object v0
.end method
