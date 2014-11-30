.class public Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;
.super Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileRequest;
.source "SynchronizeMultiFileProgressRequest.java"


# static fields
.field private static final DEFAULT_STRATEGY:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;


# instance fields
.field private description:Ljava/lang/String;

.field private filter:Ljava/io/FilenameFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/amazon/ags/constants/whispersync/ConflictStrategy;->PLAYER_SELECT:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    sput-object v0, Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;->DEFAULT_STRATEGY:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileRequest;-><init>(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;)V

    .line 24
    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getFilter()Ljava/io/FilenameFilter;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;->filter:Ljava/io/FilenameFilter;

    return-object v0
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;->description:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public final setFilter(Ljava/io/FilenameFilter;)V
    .locals 0
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;->filter:Ljava/io/FilenameFilter;

    .line 51
    return-void
.end method
