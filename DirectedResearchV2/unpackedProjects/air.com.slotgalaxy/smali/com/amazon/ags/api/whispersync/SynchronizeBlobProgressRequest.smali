.class public Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;
.super Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;
.source "SynchronizeBlobProgressRequest.java"


# static fields
.field private static final DEFAULT_STRATEGY:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;


# instance fields
.field private data:[B

.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/amazon/ags/constants/whispersync/ConflictStrategy;->PLAYER_SELECT:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    sput-object v0, Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;->DEFAULT_STRATEGY:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;-><init>(Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;)V

    .line 22
    return-void
.end method


# virtual methods
.method public final getData()[B
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;->data:[B

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final setData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 43
    iput-object p1, p0, Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;->data:[B

    .line 44
    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;->description:Ljava/lang/String;

    .line 33
    return-void
.end method
