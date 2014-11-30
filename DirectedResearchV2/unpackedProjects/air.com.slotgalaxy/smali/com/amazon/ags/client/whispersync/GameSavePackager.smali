.class public Lcom/amazon/ags/client/whispersync/GameSavePackager;
.super Ljava/lang/Object;
.source "GameSavePackager.java"


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "STC"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private filterWrapper:Lcom/amazon/ags/client/whispersync/SafeFilenameFilterWrapper;

.field private final zipUtil:Lcom/amazon/ags/client/whispersync/zip/ZipUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/client/whispersync/GameSavePackager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/client/whispersync/GameSavePackager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazon/ags/client/whispersync/GameSavePackager;-><init>(Landroid/content/Context;Ljava/io/FilenameFilter;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/FilenameFilter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filter"    # Ljava/io/FilenameFilter;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;

    invoke-direct {v0}, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;-><init>()V

    iput-object v0, p0, Lcom/amazon/ags/client/whispersync/GameSavePackager;->zipUtil:Lcom/amazon/ags/client/whispersync/zip/ZipUtil;

    .line 40
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/GameSavePackager;->context:Landroid/content/Context;

    .line 41
    new-instance v0, Lcom/amazon/ags/client/whispersync/SafeFilenameFilterWrapper;

    invoke-direct {v0}, Lcom/amazon/ags/client/whispersync/SafeFilenameFilterWrapper;-><init>()V

    iput-object v0, p0, Lcom/amazon/ags/client/whispersync/GameSavePackager;->filterWrapper:Lcom/amazon/ags/client/whispersync/SafeFilenameFilterWrapper;

    .line 42
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/GameSavePackager;->filterWrapper:Lcom/amazon/ags/client/whispersync/SafeFilenameFilterWrapper;

    invoke-virtual {v0, p2}, Lcom/amazon/ags/client/whispersync/SafeFilenameFilterWrapper;->setFilter(Ljava/io/FilenameFilter;)V

    .line 43
    return-void
.end method


# virtual methods
.method public pack()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    sget-object v1, Lcom/amazon/ags/client/whispersync/GameSavePackager;->TAG:Ljava/lang/String;

    const-string v2, "Entering pack()..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/GameSavePackager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 61
    .local v0, "packageDir":Ljava/io/File;
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/GameSavePackager;->zipUtil:Lcom/amazon/ags/client/whispersync/zip/ZipUtil;

    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/GameSavePackager;->filterWrapper:Lcom/amazon/ags/client/whispersync/SafeFilenameFilterWrapper;

    invoke-interface {v1, v0, v2}, Lcom/amazon/ags/client/whispersync/zip/ZipUtil;->zipToByteArray(Ljava/io/File;Ljava/io/FilenameFilter;)[B

    move-result-object v1

    return-object v1
.end method

.method public final setFilter(Ljava/io/FilenameFilter;)V
    .locals 1
    .param p1, "override"    # Ljava/io/FilenameFilter;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/GameSavePackager;->filterWrapper:Lcom/amazon/ags/client/whispersync/SafeFilenameFilterWrapper;

    invoke-virtual {v0, p1}, Lcom/amazon/ags/client/whispersync/SafeFilenameFilterWrapper;->setFilter(Ljava/io/FilenameFilter;)V

    .line 56
    return-void
.end method

.method public unpack([B)V
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    sget-object v1, Lcom/amazon/ags/client/whispersync/GameSavePackager;->TAG:Ljava/lang/String;

    const-string v2, "Entering unpack()..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/GameSavePackager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 67
    .local v0, "packageDir":Ljava/io/File;
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/GameSavePackager;->zipUtil:Lcom/amazon/ags/client/whispersync/zip/ZipUtil;

    invoke-interface {v1, p1, v0}, Lcom/amazon/ags/client/whispersync/zip/ZipUtil;->unzip([BLjava/io/File;)V

    .line 68
    return-void
.end method
