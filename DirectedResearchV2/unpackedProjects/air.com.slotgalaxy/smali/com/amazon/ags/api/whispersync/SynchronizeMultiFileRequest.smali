.class public Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileRequest;
.super Ljava/lang/Object;
.source "SynchronizeMultiFileRequest.java"


# static fields
.field private static final DEFAULT_STRATEGY:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;


# instance fields
.field private callback:Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;

.field private conflictStrategy:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/amazon/ags/constants/whispersync/ConflictStrategy;->PLAYER_SELECT:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    sput-object v0, Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileRequest;->DEFAULT_STRATEGY:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileRequest;->DEFAULT_STRATEGY:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    iput-object v0, p0, Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileRequest;->conflictStrategy:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    .line 21
    iput-object p1, p0, Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileRequest;->callback:Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;

    .line 22
    return-void
.end method


# virtual methods
.method public final getCallback()Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileRequest;->callback:Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;

    return-object v0
.end method

.method public final getConflictStrategy()Lcom/amazon/ags/constants/whispersync/ConflictStrategy;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileRequest;->conflictStrategy:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    return-object v0
.end method

.method public final setConflictStrategy(Lcom/amazon/ags/constants/whispersync/ConflictStrategy;)V
    .locals 0
    .param p1, "conflictStrategy"    # Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileRequest;->conflictStrategy:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    .line 34
    return-void
.end method
